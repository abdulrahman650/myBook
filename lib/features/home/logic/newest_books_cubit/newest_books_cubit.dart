import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/book_model.dart';
import '../home_repos/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks()async{
    emit(NewestBooksLoading());
    final result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure)
    {
      emit(NewestBooksFailure(failure.errMessage));
    }, (books)
    {
      emit(NewestBooksSuccess(books));
    });
  }
}
