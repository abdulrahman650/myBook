import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:mybook/features/home/data/book_model.dart';
import 'package:mybook/features/home/logic/home_repos/home_repo.dart';

import '../../data/book_model/book_model.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks()async{
    emit(FeaturedBooksLoading());
    final result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure)
    {
      emit(FeaturedBooksFailure(failure.errMessage));
    }, (books)
    {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
