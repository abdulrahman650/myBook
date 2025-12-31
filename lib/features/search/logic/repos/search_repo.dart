import 'package:dartz/dartz.dart';

import '../../../../core/erorrs/failures.dart';
import '../../../home/data/book_model/book_model.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> searchBooks({required String query});
}
