import 'package:flutter/material.dart';
import 'package:mybook/core/conestent/theme_cubit.dart';
import 'package:mybook/features/books_details/view/widgets_books_details/similar_books_list_view.dart';

import '../../../../core/conestent/colors.dart';


class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: text.titleSmall!.copyWith(
            fontWeight: FontWeight.w600,

          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBooksListview(),
      ],
    );
  }
}
