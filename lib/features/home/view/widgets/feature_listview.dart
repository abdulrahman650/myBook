import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mybook/features/books_details/view/widgets_books_details/books_datiles_view_body.dart';

import '../../../../core/utils/app_router.dart';
import '../../../books_details/view/book_details_view.dart';
import 'custom_book_item.dart';
class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *.3,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
            return Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.0),
              child:  GestureDetector(
                  onTap:()
                  // {Navigator.pop(context, AppRouter.bookDetailsView,);},
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const BookDetailsView()),
                    );
                  },
                  child: CustomBookImage()),
            );
          }),
    );
  }
}
