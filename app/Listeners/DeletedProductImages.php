<?php

namespace App\Listeners;

use App\Events\ProductDeleted;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Storage;

class DeletedProductImages
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  ProductDeleted  $event
     * @return void
     */
    public function handle(ProductDeleted $event)
    {
        $images = json_decode($event->product->product_image);
        Storage::disk('public_uploads_path')->delete($images);

    }
}
