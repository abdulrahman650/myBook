import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mybook/core/conestent/colors.dart';
import 'package:mybook/core/conestent/theme_cubit.dart';
import 'package:mybook/features/home/data/book_model/book_model.dart';

import '../logic/similar_books_cubit/similar_books_cubit.dart';
import 'widgets_books_details/books_datiles_view_body.dart';
import 'package:flutter/material.dart';
class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
      category: widget.bookModel.volumeInfo.categories?[0] ?? '',
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.isDark
          ? AppColors.primary
          : AppColors.white,
      child: SafeArea(
          child: BooksDetailsViewBody(bookModel: widget.bookModel,)),
    );
  }
}
