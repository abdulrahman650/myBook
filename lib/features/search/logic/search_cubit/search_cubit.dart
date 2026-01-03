import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../home/data/book_model/book_model.dart';
import '../repos/search_repo.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepo searchRepo;
  SearchCubit(this.searchRepo) : super(SearchInitial());

  void searchBooks({required String query}) async {
    if (query.isEmpty) {
      emit(SearchInitial());
      return;
    }

    emit(SearchLoading());

    var result = await searchRepo.searchBooks(query: query);

    result.fold(
          (failure) => emit(SearchFailure(failure.errMessage)),
          (books) => emit(SearchSuccess(books)),
    );
  }

}
