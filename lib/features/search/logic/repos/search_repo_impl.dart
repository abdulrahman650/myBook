import 'package:dartz/dartz.dart';
import 'package:mybook/features/search/logic/repos/search_repo.dart';

import '../../../../core/erorrs/failures.dart';
import '../../../../core/services/api_services.dart';
import '../../../home/data/book_model/book_model.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> searchBooks({
    required String query,
  }) async {
    try {
      // var data = await apiService.get(endPoint: 'volumes?q=$query');
      var data = await apiService.get(
        endPoint: 'volumes?q=subject:$query',
      );

      List<BookModel> books = [];

      if (data['items'] != null) {
        for (var item in data['items']) {
          books.add(BookModel.fromJson(item));
        }
      }
      // for (var item in data['items']) {
      //   books.add(BookModel.fromJson(item));
      // }

      return right(books);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
