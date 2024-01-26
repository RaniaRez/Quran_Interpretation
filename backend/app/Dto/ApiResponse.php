<?php

namespace App\Dto;

use Illuminate\Http\JsonResponse;

class ApiResponse
{
    /**
     * Generate a success response.
     *
     * @param string $message
     * @param $data
     * @param int $page
     * @param int $size
     * @param array $extra
     * @param int $statusCode
     * @return \Illuminate\Http\JsonResponse
     */
    public static function success(string $message, $data = null, int $page = null, int $size = null, $extra = null, int $statusCode = 200): JsonResponse
    {
        $response = [
            'status' => true,
            'message' => $message,
        ];

        if ($data != null) {
            $response['data'] = $data;
        }

        if ($page != null && $size != null) {
            $response['page'] = $page;
            $response['size'] = $size;
        }

        if ($extra != null) {
            $response['extra'] = $extra;
        }

        return response()->json($response, $statusCode);
    }

    /**
     * Generate an error response.
     *
     * @param string $message
     * @param string $code
     * @param int $statusCode
     * @param array $errors
     * @return \Illuminate\Http\JsonResponse
     */
    public static function error(string $message, string $code, int $statusCode = 400, $errors = []): JsonResponse
    {
        return response()->json([
            'status' => false,
            'message' => $message,
            'code' => $code,
            'errors' => $errors,
        ], $statusCode);
    }
}
