<?php

namespace App\Http\Middleware;

use App\Dto\ApiResponse;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;
use Tymon\JWTAuth\Facades\JWTAuth;

class JwtAuthGuard
{
    /**
     * Handle an incoming request.
     *
     * @param \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response) $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        try {
            $user = JWTAuth::parseToken()->authenticate();
        } catch (\Exception $e) {
            // Handle token parsing errors (invalid, expired, etc.)
            return ApiResponse::error('Unauthenticated', 'auth:unauthenticated', 401);
        }

        if (!$user) {
            return ApiResponse::error('Unauthenticated', 'auth:unauthenticated', 401);
        }

        // Bind the user to Laravel's authentication system
        Auth::login($user);

        return $next($request);
    }
}
