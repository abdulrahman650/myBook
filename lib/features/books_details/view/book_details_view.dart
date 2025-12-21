import 'widgets_books_details/books_datiles_view_body.dart';
import 'package:flutter/material.dart';
class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: BooksDetailsViewBody());
  }
}
