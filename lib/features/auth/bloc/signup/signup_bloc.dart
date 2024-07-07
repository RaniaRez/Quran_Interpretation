import 'dart:async';

import 'package:bloc/bloc.dart';
// import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../logic/auth/auth_bloc.dart';

part 'signup_bloc.freezed.dart';
part 'signup_event.dart';
part 'signup_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final AuthBloc authBloc;
  SignUpBloc(this.authBloc) : super(const SignUpState.initial()) {
    on<_SignUp>(_onSignUp);
  }

  FutureOr<void> _onSignUp(_SignUp event, Emitter<SignUpState> emit) async {
    // Response? res;
    try {
      emit(const SignUpState.loading());
      // res = await AuthRepository.login(event.username, event.password);
      emit(const SignUpState.success());
      // authBloc.add(AuthEvent.loggedIn(
      //     token: res.data['data']['accessToken'],
      //     refreshToken: res.data['data']['refreshToken']));
      authBloc.add(const AuthEvent.loggedIn(token: "", refreshToken: ""));
      emit(const SignUpState.initial());
    } catch (e) {
      emit(const SignUpState.failure('auth:error:login-failed'));
    }
  }
}
