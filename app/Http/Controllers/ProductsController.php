<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\State;
use App\LocalGovt;
use App\Product;
use App\Category;

class ProductsController extends Controller
{


    public function create(){
        $categories = Category::orderBy('title', 'asc')->get();
        $states = State::orderBy('state', 'asc')->get();
        $local_govts = LocalGovt::orderBy('local_govt', 'asc')->get();

        return view('products.post', [
            'categories' => $categories,
            'states'    => $states,
            'local_govts' => $local_govts
        ]);
    }

    public function store(Request $request){
        $request->validate([
            'category' => 'required|integer|exists:categories,id',
            'title' => 'required|string|max:255',
            'price'=> 'required|numeric',
            'summary' => 'required',
            'region' => 'required|integer|exists:local_govts,id',
            'fileselect' => 'required|array|min:3',
            'fileselect.*' => 'image|max:10240'
        ]);

        $images = [];
        foreach($request->fileselect  as $image){
            $images[] = basename($image->store('public/uploads'));
        }
        $newProduct =auth()->user()->products()->create([
            'title' => $request->post('title'),
            'category_id' => $request->post('category'),
            'price' => $request->post('price'),
            'summary' => $request->post('summary'),
            'approved' => true,
            'featured' => false,
            'region' => $request->post('region'),
            'product_image' => json_encode($images),
        ]);
        return redirect()->route('post-ad-form')->with('success', 'Post Added Successfully');
    }

    public function view($id, $slug){

    }

    public function list($category='all'){
        $context = [];
        if($category==='all'){
            $products = Product::where('approved', 1);
            if(request()->get('state')){
                $products = Product::where(['approved'=>1, 'region_id'=>request()->get('state')]);
            }
        }else{
            //Don't try this long chain at home
            $category = Category::where('slug', $category)->firstOrFail();
            $products = $category->products()->where('approved', 1);
            if(request()->get('state')){
                $products = $category->products()->where(['approved'=>1, 'region_id'=>request()->get('state')]);
            }
            $context['categ'] = $category;
        }

        if(request()->get('q')){
            $products->where('title', 'like', '%'.request()->get('q').'%');
        }

        $products = $products->latest()->paginate(40);

        $states = State::orderBy('state', 'asc')->get();

        $context['products'] = $products;
        $context['states'] = $states;
        $context['categories'] = Category::orderBy('title', 'asc')->get();
        $context['trending_products'] = Product::where('approved', 1)->orderBy('views', 'desc')->limit(4)->get();

        $products->appends(['state'=>request()->get('state'), 'q'=>request()->get('q')]);

        return view('products.list', $context);
    }
}
