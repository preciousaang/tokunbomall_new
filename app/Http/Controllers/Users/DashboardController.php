<?php

namespace App\Http\Controllers\Users;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Product;
use App\Category;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Hash;
use App\Message;

class DashboardController extends Controller
{

    public function message(){        
        return view('messages.send');
    }

    public function sendMessage(Request $request){
        $request->validate([
            'user' => 'required|exists:users,id',
            'message' => 'required'
        ]);

        $newMessage = auth()->user()->sentMessages()->create([
            'receiver_id' => $request->post('user'),
            'body'=>$request->post('message')
        ]);

        if($request->wantsJson()){
            return response()->json(['message'=>'Message Delivered Successfully.'], 200);
        }

        if($newMessage) return redirect()->back()->with(['success'=>'Message Delivered Successfully']);
    }

    public function messageList(){
        if($request->wantsJson()){
            return response()->json(['messages'=>auth()->user()->receivedMessages()->latest()->paginate(25)], 200);
        }
        return view('messages.list', [
            'messages'=>auth()->user()->receivedMessages()->latest()->paginate(25)
        ]);
    }

    public function readMessage($id){
        $message = Message::findOrFail($id);        
        $this->authorize('view', $message);
        $message->read = 1;
        $message->save();

        if($request->wantsJson()){
            return response()->json(['message'=>$message], 200);
        }
        return view('messages.read', [
            'message'=>$message
        ]);
    }

    public function list(Request $request, $state=null){
        $this->authorize('viewAll', Product::class);
        if($state){
            if($state=="approved"){
                $products = Product::where('approved', 1)->latest()->paginate(50);
            }elseif($state=='unapproved'){
                $products = Product::where('approved', 0)->latest()->paginate(50);
            }else{
                abort(404);
            }
        }else{
            $products = Product::latest()->paginate(50);
        }

        if($request->wantsJson()){
            return response()->json([
                'products'=>$products,
                'approved_count' => Product::where('approved', 1)->count(),
                'unapproved_count' => Product::where('approved', 0)->count()
            ]);
        }
        return view('users.dashboard', [
            'products' => $products,
            'approved_count' => Product::where('approved', 1)->count(),
            'unapproved_count' => Product::where('approved', 0)->count()
        ]);
    }

    public function changeState(Request $request, $id){
        $this->authorize('viewAll', Product::class);
        $product = Product::findOrFail($id);
        $product->approved = !(boolean)$product->approved;
        $product->save();
        if($request->wantsJson()){
            return response()->json(['success'=>'Action completed Successfully']);
        }
        return redirect()->back()->with('message', 'Action completed completely');
    }

    public function bulkAction(Request $request){
        $this->authorize('viewAll', Product::class);
        switch($request->action){
            case 'approve':
                foreach($request->options as $option){
                    $product = Product::findOrFail($option);
                    $product->approved = !(boolean)$product->approved;
                    $product->save();
                }
            break;
            case 'unapprove':
                foreach($request->options as $option){
                    $product = Product::findOrFail($option);
                    $product->approved = !(boolean)$product->approved;
                    $product->save();
                }
            break;
            case 'delete':
                foreach($request->options as $option){
                    $product = Product::findOrFail($option);
                    $product->delete();
                }
            break;
            default:
                return redirect()->back()->with('error', 'Invalid Action');
            break;
        }
        if($request->wantsJson()){
            return response()->json(['success'=>'Action completed Successfully']);
        }
        return redirect()->back()->with('success', 'Action Completed Successfully.');
    }

    public function myAds(Request $request){
        $products = auth()->user()->products()->latest()->paginate(50);
        if($request->wantsJson()){
            return response()->json(['products'=>$products]);
        }
        return view('products.myads', [
            'products' => $products
        ]);
    }

    public function editProfile(){
        $user = auth()->user();
        return view('users.profile', ['user'=>$user]);
    }

    public function updateProfile(Request $request){
        $user = auth()->user();
        $request->validate([                       
            'full_name'=>'required|string|max:255',
            'email'=>['required', 'email', Rule::unique('users')->ignore($user->id)],
            'phone'=>'required|numeric|digits:11',            
        ]);
        $user->full_name = $request->post('full_name');
        $user->email = $request->post('email');
        $user->phone = $request->post('phone');
        $user->save();
        if($request->wantsJson()){
            return response()->json(['success'=>'Profile Updated Successfully']);
        }
        return redirect()->back()->with('success', 'Profile Updated Successfully');        
    }

    public function editPassword(){
        return view('users.change-password');
    }

    public function changePassword(Request $request){        
        $request->validate([
            'old_password' => 'required',
            'password' => 'required|string|max:255|confirmed'
        ]);
        $user = auth()->user();
        if(Hash::check($request->post('old_password'), $user->password)){
            $user->password = bcrypt($request->post('password'));
            $user->save();
        }else{
            if($request->wantsJson()){
                return response()->json(['error'=>'Old Password Incorrect']);
            }
            return redirect()->back()->with('error', 'Old Password Incorrect');
        }

        if($request->wantsJson()){
            return response()->json(['success'=>'Password Updated Successfully']);
        }

        return redirect()->route('update-profile')->with('success', 'Password Changed Successfully');
    }
}
