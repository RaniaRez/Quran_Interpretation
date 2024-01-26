part of 'signup_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.signup({
    required String userType,
    required String email,
    required String username,
    required String password,
    required String avatar,
  }) = _SignUp;
}
