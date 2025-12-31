import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mybook/features/books_details/view/widgets_books_details/similar_books_section.dart';
import 'package:mybook/features/home/data/book_model/book_model.dart';

import 'books_details_section.dart';
import 'custom_book_details_app_bar.dart';
class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(child: Gap(50)),
                SimilarBooksSection(),
                Gap(40),
              ],
            ),
          ),
        ),
      ],

    );
  }
}
