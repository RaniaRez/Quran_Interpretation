import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'auth.api.dart';

class AuthRepository {
  static const storage = FlutterSecureStorage();

  static Future<Response> login(String username, String password) async {
    Response response = await AuthApi.login(username, password);

    return response;
  }

  static Future<Response> refresh(String token) async {
    Response response = await AuthApi.refresh(token);

    return response;
  }

  static Future<Response> register(Map<String, dynamic> data) async {
    Response response = await AuthApi.register(data);

    return response;
  }

  static Future<Response> getUser(String token) async {
    Response response = await AuthApi.getUser(token);

    return response;
  }

  static Future<Response> update(Map<String, dynamic> data) async {
    Response response = await AuthApi.update(data);

    return response;
  }

  static Future<Response> company(int companyId) async {
    Response response = await AuthApi.company(companyId);

    return response;
  }

  static Future<void> setToken(String token) async {
    await storage.write(key: 'token', value: 'Bearer $token');
  }

  static Future<void> setRefreshToken(String token) async {
    await storage.write(key: 'refresh-token', value: token);
  }

  static Future<void> setLink(String uri) async {
    await storage.write(key: 'link', value: uri);
  }

  static Future<void> setCompany(int companyId) async {
    await storage.write(key: 'companyId', value: companyId.toString());
  }

  static Future<void> setFirstTime(int firstTime) async {
    await storage.write(key: 'firstTime', value: firstTime.toString());
  }

  static Future<String?> getToken() async {
    return await storage.read(key: 'token');
  }

  static Future<String?> getRefreshToken() async {
    return await storage.read(key: 'refresh-token');
  }

  static Future<String?> getLink() async {
    return await storage.read(key: 'link');
  }

  static Future<String?> getCompany() async {
    return await storage.read(key: 'companyId');
  }

  static Future<int> getFirstTime() async {
    return int.tryParse(await storage.read(key: 'firstTime') ?? "") ?? 1;
  }

  static Future<void> deleteToken() async {
    await storage.delete(key: 'token');
  }

  static Future<String?> get token async => await getToken();
  static Future<String?> get refreshToken async => await getRefreshToken();
  static Future<String?> get link async => await getLink();
  static Future<String?> get companyId async => getCompany();
  static Future<int> get firstTime async => getFirstTime();
}
