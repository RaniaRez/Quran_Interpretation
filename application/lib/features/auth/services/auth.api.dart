import 'package:dio/dio.dart';

import '../../../shared/services/helpers/dio.helper.dart';
import 'auth.repository.dart';

class AuthApi {
  static Future<Response> login(String username, String password) async {
    return await DioHelper.postData(
      url: '/auth/login',
      data: {
        'username': username,
        'password': password,
      },
    );
  }

  static Future<Response> refresh(String token) async {
    return await DioHelper.postData(
      url: '/auth/token',
      data: {
        'grantType': 'refresh_token',
        'clientId': 'e-logipharm-app',
        'refreshToken': token,
      },
    );
  }

  static Future<Response> register(Map<String, dynamic> data) async {
    return await DioHelper.postData(
      url: '/auth/client-register',
      data: data,
    );
  }

  static Future<Response> getUser(String token) async {
    return await DioHelper.getData(
      url: '/account-settings/client-info',
      token: token,
    );
  }

  static Future<Response> update(Map<String, dynamic> data) async {
    String? token = await AuthRepository.token;
    return await DioHelper.patchData(
      url: '/clients/update-password',
      token: token,
      data: data,
    );
  }

  static Future<Response> company(int companyId) async {
    return await DioHelper.getData(
      url: "/companies/$companyId",
    );
  }
}
