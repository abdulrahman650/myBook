import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/conestent/assets.dart';
import '../../../home/data/book_model/book_model.dart';
import '../../../home/view/widgets/book_rating.dart';
import '../../../home/view/widgets/custom_book_item.dart';
import 'books_action.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book,});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final text = Theme.of(context).textTheme;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * .2,
          ),
          child: CustomBookImage(
            imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        Gap(43),
        Text(
          book.volumeInfo.title!,
          style: text.displaySmall!.copyWith(
            fontSize: 30,
            fontFamily: Assets.kGtSectraFine,
          ),
          textAlign: TextAlign.center,
        ),
        Gap(6),
        Opacity(
          opacity: .7,
          child: Text(
            book.volumeInfo.authors?[0] ?? '',
            style: text.titleMedium!.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        BookRating(
          rating: book.volumeInfo.averageRating ?? 0,
          count: book.volumeInfo.ratingsCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        BooksAction(
           bookModel: book,
        ),
      ],
    );
  }
}
