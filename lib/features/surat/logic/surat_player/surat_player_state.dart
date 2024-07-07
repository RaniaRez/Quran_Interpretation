part of 'surat_player_cubit.dart';

@freezed
class SuratPlayerState with _$SuratPlayerState {
  const factory SuratPlayerState.loaded({
    required int surahNumber,
    required bool isPlaying,
  }) = _Loaded;
}
