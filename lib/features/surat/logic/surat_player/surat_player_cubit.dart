import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran/quran.dart' as quran;

part 'surat_player_state.dart';
part 'surat_player_cubit.freezed.dart';

class SuratPlayerCubit extends Cubit<SuratPlayerState> {
  SuratPlayerCubit()
      : super(const SuratPlayerState.loaded(isPlaying: false, surahNumber: 0));

  AudioPlayer player = AudioPlayer();

  int surahNumber = 0;
  
}
