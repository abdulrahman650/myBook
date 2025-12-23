import 'package:dartz/dartz.dart';
import 'package:mybook/features/home/data/book_model.dart';

import '../../../../core/erorrs/failures.dart';

abstract class HomeRepo{
 Future<Either<Failure,List<BookModel>>> fetchBestSellerBooks();
 Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
}