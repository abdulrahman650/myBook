import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:mybook/features/home/data/book_model.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
