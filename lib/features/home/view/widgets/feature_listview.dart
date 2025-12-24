import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mybook/core/utils/custom_error_widget.dart';
import 'package:mybook/core/utils/custom_loading_indicator.dart';
import 'package:mybook/features/books_details/view/widgets_books_details/books_datiles_view_body.dart';
import 'package:mybook/features/home/logic/featured_books_cubit/featured_books_cubit.dart';

import '../../../../core/utils/app_router.dart';
import '../../../books_details/view/book_details_view.dart';
import 'custom_book_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if(state is FeaturedBooksSuccess){
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * .3,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push(AppRouter.bookDetailsView);
                        },
                        child: CustomBookImage()),
                  );
                }),
          );
        }else if (state is FeaturedBooksFailure){
return CustomErrorWidget(errMessage:state.errMessage);

        }else{
          return CustomLoadingIndicator();

        }

      },
    );
  }
}
