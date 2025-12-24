import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mybook/core/erorrs/failures.dart';
import 'package:mybook/core/services/api_services.dart';
import 'package:mybook/features/home/data/book_model.dart';
import 'package:mybook/features/home/logic/home_repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewSetBooks() async {
    try {
      var data = await apiService.get(
        endPoint:
            "volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:Programming",
      );
      List<BookModel> books = [];
      for (var item in data["item"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if(e is DioException){
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
