import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mybook/features/home/logic/home_repos/home_repo.dart';

import '../../data/book_model/book_model.dart';

part 'featured_books_state.dart';
//
// class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
//   FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
//   final HomeRepo homeRepo;
//   Future<void> fetchFeaturedBooks()async{
//     emit(FeaturedBooksLoading());
//     final result = await homeRepo.fetchFeaturedBooks();
//     result.fold((failure)
//     {
//       emit(FeaturedBooksFailure(failure.errMessage));
//     }, (books)
//     {
//       emit(FeaturedBooksSuccess(books));
//     });
//   }
// }




// class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
//   final HomeRepo homeRepo;
//
//   FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
//
//   Future<void> fetchFeaturedBooks() async {
//     emit(FeaturedBooksLoading());
//
//     try {
//       final result = await homeRepo.fetchFeaturedBooks();
//
//       result.fold(
//             (failure) {
//           emit(FeaturedBooksFailure(failure.errMessage));
//         },
//             (books) {
//           // لو القائمة فاضية، يظهر رسالة في الـ Widget
//           emit(FeaturedBooksSuccess(books));
//         },
//       );
//     } catch (e) {
//       emit(FeaturedBooksFailure(e.toString()));
//     }
//   }
// }


class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
