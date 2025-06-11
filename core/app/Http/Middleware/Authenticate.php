<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;
use Closure;
use Auth;

class Authenticate extends Middleware
{
    /**
     * Get the path the user should be redirected to when they are not authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  array  $guards
     * @return mixed
     */
    public function handle($request, Closure $next, ...$guards) // <-- Add ...$guards
    {
        if (Auth::check()) {
            return $next($request);
        }

        // Redirect to login if not authenticated
        return redirect()->route('user.login');
    }
}
