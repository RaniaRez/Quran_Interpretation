<?php

namespace App\Http\Controllers;

use App\Http\Resources\UserResource;
use App\Models\User;
use Illuminate\Http\Request;
use App\Dto\ApiResponse;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Tymon\JWTAuth\Facades\JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;

class AuthController extends Controller
{
    /**
     * Handle a login request to the application.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(Request $request)
    {
        // Validate the request data.
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required',
        ]);

        if ($validator->fails()) {
            return ApiResponse::error('Validation error', 'general:validation',  400, $validator->errors());
        }

        $credentials = $request->only('email', 'password');

        // Check the credentials and create a token for the user.
        $user = User::where('email', $credentials['email'])->first();
        if (!$user || !Hash::check($credentials['password'], $user->password)) {
            return ApiResponse::error('Invalid credentials', 'auth:invalid-credentials', 401);
        }

        try {
            if (!$token = JWTAuth::attempt($credentials)) {
                return ApiResponse::error('Invalid credentials','auth:invalid-credentials', 401);
            }
        } catch (JWTException $e) {
            return ApiResponse::error('Could not create token', 'general:server', 500);
        }

        return $this->respondWithTokens($token);
    }

    /**
     * Get the authenticated User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function me()
    {
        $user = auth()->user();
        return ApiResponse::success('User information retrieved successfully', new UserResource($user));
    }

    /**
     * Respond with the access token and refresh token.
     *
     * @param string $token
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondWithTokens($token)
    {
        return ApiResponse::success('Tokens generated', [
            'accessToken' => $token,
            'expiresIn' => auth()->factory()->getTTL() * 60,
        ]);
    }
}
