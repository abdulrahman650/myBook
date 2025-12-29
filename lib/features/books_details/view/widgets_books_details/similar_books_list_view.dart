import 'package:flutter/material.dart';
import '../../../home/view/widgets/custom_book_item.dart';

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
return SizedBox(
  height: MediaQuery.of(context).size.height * .15,
  child: ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: CustomBookImage(
            imageUrl:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxdFOtQZHZ3gaGAZIbaWT8QP5TMj-bXQp5pA&s"
            // state.books[index].volumeInfo.imageLinks?.thumbnail ??
            //     '',
          ),
        );
      }),
);
  }
}
