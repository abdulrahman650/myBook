import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:mybook/features/home/view/widgets/custom_book_item.dart';
import '../../../../core/conestent/assets.dart';
import '../../../../core/utiles/app_router.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(
              imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxdFOtQZHZ3gaGAZIbaWT8QP5TMj-bXQp5pA&s",
            ),
            Gap(30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      "Tiger Animal",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: text.titleLarge!.copyWith(
                        fontFamily: Assets.kGtSectraFine,
                      ),
                    ),
                  ),
                  Gap(3),
                  Text(
                    "strong animal",
                    style: text.titleSmall!.copyWith(
                      // fontFamily: Assets.kGtSectraFine,
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
                      BookRating(rating: 0, count: 0),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
