part of 'navigation_cubit.dart';

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState.home() = _Home;
  const factory NavigationState.notification() = _Notification;
  const factory NavigationState.duaa() = _Duaa;
  const factory NavigationState.chat() = _Chat;
  const factory NavigationState.leaderboard() = _Leaderboard;
}
