import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/book_model.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit() : super(NewsetBooksInitial());
}
