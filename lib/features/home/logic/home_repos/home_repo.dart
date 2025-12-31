
import 'package:dartz/dartz.dart';

import '../../../../core/erorrs/failures.dart';
import '../../data/book_model/book_model.dart';


abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category});
}
