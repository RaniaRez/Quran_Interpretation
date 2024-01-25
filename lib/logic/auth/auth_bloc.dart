import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:app/features/auth/core/avatars.type.dart';
import 'package:app/features/auth/core/user.type.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../features/auth/services/auth.repository.dart';
import '../../models/user/user.dart';
// import '../../shared/services/helpers/networkinfo.helper.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.initial()) {
    on<_AppStarted>(_onAppStarted);
    on<_LoggedIn>(_onLoggedIn);
    on<_SignUp>(_onSignedUp);
    on<_LoggedOut>(_onLoggedOut);
    on<_UpdateUser>(_onUpdateUser);
  }

  FutureOr<void> _onAppStarted(
      _AppStarted event, Emitter<AuthState> emit) async {
    try {
      emit(const _Loading());
      emit(_Authenticated(_user));
      // final isConnected = await NetworkInfo.isConnected;
      // if (!isConnected) {
      //   emit(const _Failure('errors:no-internet-connection'));
      //   return;
      // }

      // final token = await AuthRepository.token;
      // final refreshToken = await AuthRepository.refreshToken;
      // if (token != null && refreshToken != null) {
      //   Response response = await AuthRepository.refresh(refreshToken);
      //   if (response.statusCode == 401) {
      //     emit(const _Unauthenticated());
      //     return;
      //   }
      //   await AuthRepository.setToken(response.data['data']['accessToken']);
      //   await AuthRepository.setRefreshToken(
      //       response.data['data']['refreshToken']);

      //   final emitEvent = await setuser(token);
      //   emit(emitEvent);
      // } else {
      //   emit(const _Unauthenticated());
      //   return;
      // }
    } catch (e) {
      log("Error $e");
      emit(const _Failure('errors:something-went-wrong'));
    }
  }

  FutureOr<void> _onLoggedIn(_LoggedIn event, Emitter<AuthState> emit) async {
    try {
      emit(const _Loading());
      emit(_Authenticated(_user));
      await AuthRepository.setToken(event.token);
      await AuthRepository.setRefreshToken(event.refreshToken);
      final emitEvent = await setuser("Bearer ${event.token}");
      emit(emitEvent);
    } catch (e) {
      log("Error $e");
      emit(const _Unauthenticated());
    }
  }

  FutureOr<void> _onSignedUp(_SignUp event, Emitter<AuthState> emit) async {
    try {
      emit(const _Loading());
      emit(_Authenticated(_user));
      await AuthRepository.setToken("");
      await AuthRepository.setRefreshToken("");
      var json = jsonDecode(
          '{"id": 1, "username": "${event.username}", "email": "${event.email}", "avatar": "${event.avatar}", "type": "${event.userType}"}');
      _user = User.fromJson(json);
      emit(_Authenticated(_user));
      // final emitEvent = await setuser("Bearer ${""}");
      // emit(emitEvent);
    } catch (e) {
      log("Error $e");
      emit(const _Unauthenticated());
    }
  }

  FutureOr<void> _onLoggedOut(_LoggedOut event, Emitter<AuthState> emit) async {
    try {
      emit(const _Loading());
      await AuthRepository.deleteToken();
      emit(const _Unauthenticated());
    } catch (e) {
      log("Error $e");
      emit(const _Unauthenticated());
    }
  }

  FutureOr<void> _onUpdateUser(
      _UpdateUser event, Emitter<AuthState> emit) async {
    try {
      final emitEvent = await setuser(event.token);
      emit(emitEvent);
      return;
    } catch (e) {
      log("Error $e");
      emit(const _Unauthenticated());
    }
  }

  Future<AuthState> setuser(String token) async {
    try {
      Response res = await AuthRepository.getUser(token);
      if (res.statusCode != 200) {
        await AuthRepository.deleteToken();
        return const _Unauthenticated();
      }
      _user = User.fromJson(res.data['data']);
      return _Authenticated(_user);
    } catch (e) {
      log("Error $e");
      return const _Failure('errors:something-went-wrong');
    }
  }

  User _user = User(
    id: 0,
    username: "Rania",
    email: "rani@gmail.com",
    avatar: AvatarTypes.first.path,
    type: UserTypes.student.value,
    hifdh: const ProgressHifdh(surah: 7, verse: 4),
    repetition: const ProgressRepetition(surah: 10, verse: 90),
    talqueen: const ProgressTalqeen(surah: 7, verse: 20),
  );

  User get user => _user;
}
