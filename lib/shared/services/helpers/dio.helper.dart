import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:http/http.dart' as http;

import '../../../core/const.dart';
import '../../../features/auth/services/auth.repository.dart';

class DioHelper {
  static late Dio dio;
  static CancelToken cancelToken = CancelToken();

  static Future<void> init() async {
    String? link = await AuthRepository.link;

    dio = Dio(
      BaseOptions(
        baseUrl: link ?? '$https$baseUrl:$port/api',
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        receiveDataWhenStatusError: true,
        validateStatus: (_) => true,
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
      ),
    );
    (dio.httpClientAdapter as IOHttpClientAdapter).validateCertificate =
        (certificate, host, port) => true;
    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
      HttpClient client = HttpClient();
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        // Print the request method and URL
        log('Request ${options.method}: ${options.uri}');
        print('Request ${options.method}: ${options.uri}');

        // Print request headers (if any)
        log('Headers: ${options.headers}');
        print('Headers: ${options.headers}');

        // Print request data (if any)
        if (options.data != null) {
          log('Data: ${options.data}');
          print('Data: ${options.data}');
        }

        // Continue with the request
        handler.next(options);
      },
      onResponse: (e, handler) {
        // Do something with response data
        log('Response: ${e.data}');
        print('Response: ${e.data}');
        handler.next(e);
      },
      onError: (e, handler) {
        // Do something with response error
        log('Error: ${e.message}');
        print('Error: ${e.message}');
        if (e.response != null) {
          log('Error response data: ${e.response!.data}');
          print('Error response data: ${e.response!.data}');
        }
        handler.next(e);
      },
    ));
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? headers,
    String? token,
  }) async {
    Map<String, dynamic> header = {
      'Authorization': token,
      'Origin': 'ELOGIPHARM',
    };
    if (headers != null) {
      header.addAll(headers);
    }
    return await dio.get(url,
        queryParameters: query,
        cancelToken: cancelToken,
        options: Options(
          headers: header,
        ));
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
    Map<String, dynamic>? headers,
    String? token,
  }) async {
    Map<String, dynamic> header = {
      'Authorization': token,
      'Origin': 'ELOGIPHARM',
    };
    if (headers != null) {
      header.addAll(headers);
    }
    return await dio.post(url,
        queryParameters: query,
        data: data,
        cancelToken: cancelToken,
        options: Options(
          headers: header,
        ));
  }

  static Future<Response> putData({
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? headers,
    required Map<String, dynamic> data,
    String? token,
  }) async {
    Map<String, dynamic> header = {
      'Authorization': token,
      'Origin': 'ELOGIPHARM',
    };
    if (headers != null) {
      header.addAll(headers);
    }
    return await dio.put(url,
        queryParameters: query,
        data: data,
        cancelToken: cancelToken,
        options: Options(
          headers: header,
        ));
  }

  static Future<Response> patchData({
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? headers,
    required Map<String, dynamic> data,
    String? token,
  }) async {
    Map<String, dynamic> header = {
      'Authorization': token,
    };
    if (headers != null) {
      header.addAll(headers);
    }
    return await dio.patch(url,
        queryParameters: query,
        data: data,
        cancelToken: cancelToken,
        options: Options(
          headers: header,
        ));
  }

  static Future<Response> deleteData({
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
    Map<String, dynamic>? headers,
    String? token,
  }) async {
    Map<String, dynamic> header = {
      'Authorization': token,
      'Origin': 'ELOGIPHARM',
    };
    if (headers != null) {
      header.addAll(headers);
    }
    return await dio.delete(
      url,
      queryParameters: query,
      data: data,
      cancelToken: cancelToken,
      options: Options(
        headers: header,
      ),
    );
  }

  static Future<String> uploadImage(
    String? path,
    String url,
    String token, {
    Map<String, String>? data,
    Map<String, dynamic>? headers,
    String method = 'POST',
  }) async {
    http.MultipartRequest req = http.MultipartRequest(
        method, Uri.parse('$https$baseUrl:$port/api$url'));
    req.headers.addAll({
      'Authorization': token,
    });
    if (path != null) {
      req.files.add(await http.MultipartFile.fromPath('file', path));
    }
    if (data != null) {
      req.fields.addAll(data);
    }

    http.StreamedResponse res = await req.send();
    return await res.stream.bytesToString();
  }
}
