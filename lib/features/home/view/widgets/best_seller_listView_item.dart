import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:mybook/features/home/view/widgets/custom_book_item.dart';
import '../../../../core/conestent/assets.dart';
import '../../../../core/utiles/app_router.dart';
import '../../data/book_model/book_model.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetailsView);
      },
      child: Row(
        children: [
          SizedBox(
            height: 125,
            child: CustomBookImage(
              imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
            ),
          ),
          Gap(30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    bookModel.volumeInfo.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: text.titleLarge!.copyWith(
                      fontFamily: Assets.kGtSectraFine,
                    ),
                  ),
                ),
                Gap(3),
                Text(
                  bookModel.volumeInfo.authors?[0] ?? '',
                  style: text.titleSmall!.copyWith(
                  ),
                ),
                Gap(3),
                Row(
                  children: [
                    Text(
                      "Free",
                      style: text.titleLarge!.copyWith(
                        fontFamily: Assets.kGtSectraFine,
                      ),
                    ),
                    const Spacer(),
                    BookRating(
                      rating: bookModel.volumeInfo.averageRating?.toInt() ?? 0,
                      count: bookModel.volumeInfo.ratingsCount ?? 0,
                    ),                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
