part of 'duaa_cubit.dart';

@freezed
class DuaaState with _$DuaaState {
  const factory DuaaState.initial() = _Initial;
  const factory DuaaState.loading() = _Loading;
  const factory DuaaState.loaded({
    required List<Duaa> duaas,
    required num total,
    required num page,
    required bool hasReachedMax,
  }) = _Loaded;
  const factory DuaaState.failure({required String message}) = _Failure;
}
