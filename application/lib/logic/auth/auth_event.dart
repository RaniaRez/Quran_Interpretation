part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.appstarted() = _AppStarted;
  const factory AuthEvent.loggedIn(
      {required String token, required String refreshToken}) = _LoggedIn;
  const factory AuthEvent.signUp({
    required String userType,
    required String email,
    required String username,
    required String password,
    required String avatar,
  }) = _SignUp;
  const factory AuthEvent.loggedOut() = _LoggedOut;
  const factory AuthEvent.updateuser(String token) = _UpdateUser;
}
