import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/duaa.dart';

part 'duaa_state.dart';
part 'duaa_cubit.freezed.dart';

class DuaaCubit extends Cubit<DuaaState> {
  DuaaCubit() : super(const DuaaState.initial());

  Future<void> start() async {
    emit(const DuaaState.loading());
    try {
      final duaas = [
        const Duaa(id: 1, surah: 2, ayah: 127),
        const Duaa(id: 2, surah: 2, ayah: 128),
        const Duaa(id: 3, surah: 2, ayah: 201),
        const Duaa(id: 4, surah: 2, ayah: 250),
        const Duaa(id: 5, surah: 2, ayah: 286),
        const Duaa(id: 6, surah: 3, ayah: 8),
        const Duaa(id: 7, surah: 2, ayah: 9),
        const Duaa(id: 8, surah: 2, ayah: 16),
        const Duaa(id: 9, surah: 2, ayah: 53),
      ];
      emit(DuaaState.loaded(
        duaas: duaas,
        total: 1,
        page: 1,
        hasReachedMax: true,
      ));
    } catch (e) {
      emit(DuaaState.failure(message: e.toString()));
    }
  }

  Future<void> loadMore() async {
    try {
      final duaas = [
        const Duaa(id: 1, surah: 2, ayah: 127),
        const Duaa(id: 2, surah: 2, ayah: 128),
        const Duaa(id: 3, surah: 2, ayah: 201),
        const Duaa(id: 4, surah: 2, ayah: 250),
        const Duaa(id: 5, surah: 2, ayah: 286),
        const Duaa(id: 6, surah: 3, ayah: 8),
        const Duaa(id: 7, surah: 2, ayah: 9),
        const Duaa(id: 8, surah: 2, ayah: 16),
        const Duaa(id: 9, surah: 2, ayah: 53),
      ];
      emit(DuaaState.loaded(
        duaas: duaas,
        total: 1,
        page: 1,
        hasReachedMax: true,
      ));
    } catch (e) {
      emit(DuaaState.failure(message: e.toString()));
    }
  }
}
