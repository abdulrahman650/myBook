import 'package:dartz/dartz.dart';
import 'package:mybook/core/erorrs/failures.dart';
import 'package:mybook/features/home/data/book_model.dart';
import 'package:mybook/features/home/logic/home_repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo{
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {

    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {

    throw UnimplementedError();
  }
}