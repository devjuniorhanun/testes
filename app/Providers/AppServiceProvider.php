<?php

namespace App\Providers;

use App\Models\Produto;
use App\Observers\CrudProdutoObserver;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Produto::observe(CrudProdutoObserver::class);
    }
}
