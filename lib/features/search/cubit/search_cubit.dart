import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app1/core/networking/api_result.dart';
import 'package:my_app1/features/search/cubit/search_state.dart';
import 'package:my_app1/features/search/data/repo/search_repo.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepo _searchRepo;

  SearchCubit(this._searchRepo) : super(const SearchState.initial());

  void getSearchResults(String query) async {
    emit(const SearchState.loading());
    
    final response = await _searchRepo.searchDoctors(query);
    
    response.when(
      success: (data) => emit(SearchState.success(data)),
      failure: (errorHandler) => emit(SearchState.failure(errorHandler)),
    );
  }
}