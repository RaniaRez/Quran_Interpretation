import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../logic/auth/auth_bloc.dart';
import '../../services/auth.repository.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthBloc authBloc;
  LoginBloc(this.authBloc) : super(const LoginState.initial()) {
    on<_Login>(_onLogin);
  }

  FutureOr<void> _onLogin(_Login event, Emitter<LoginState> emit) async {
    Response? res;
    try {
      emit(const LoginState.loading());
      res = await AuthRepository.login(event.username, event.password);
      emit(const LoginState.success());
      // authBloc.add(AuthEvent.loggedIn(
      //     token: res.data['data']['accessToken'],
      //     refreshToken: res.data['data']['refreshToken']));
      authBloc.add(const AuthEvent.loggedIn(token: "", refreshToken: ""));
      emit(const LoginState.initial());
    } catch (e) {
      emit(LoginState.failure(res != null
          ? res.data['descriptionCode'] ?? res.data['descriptionCode']
          : 'auth:error:login-failed'));
    }
  }
}
