<?php

namespace App\Http\Middleware;

use Closure;
use App\User;
use App\Partner;
use Illuminate\Support\Facades\Auth;


class Admin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(Auth::user()->email  == 'admin@admin.com'){
            redirect('admin');
        }
        return $next($request);
    }
}
