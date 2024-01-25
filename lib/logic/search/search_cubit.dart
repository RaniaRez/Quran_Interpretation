import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(const SearchState(searchQuery: null));

  static SearchCubit get(context) => BlocProvider.of(context);

  void setSearchQuery(String query) {
    emit(state.copyWith(searchQuery: query));
  }
}
