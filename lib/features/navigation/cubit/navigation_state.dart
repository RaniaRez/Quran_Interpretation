part of 'navigation_cubit.dart';

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState.home() = _Home;
  const factory NavigationState.medicaments() = _Medicaments;
  const factory NavigationState.orders() = _Orders;
  const factory NavigationState.card() = _Card;
  const factory NavigationState.menu() = _Menu;
}
