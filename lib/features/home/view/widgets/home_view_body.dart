import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/conestent/assets.dart';
import '../../logic/featured_books_cubit/featured_books_cubit.dart';
import '../../logic/newest_books_cubit/newest_books_cubit.dart';
import 'best_seller_listView.dart';
import 'custom_book_item.dart';
import 'custom_appBar.dart';
import 'feature_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        return Skeletonizer(
          enabled:
          state is FeaturedBooksLoading ||
              context.watch<NewestBooksCubit>().state is NewestBooksLoading,
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: CustomAppBar(),
                    ),
                    const FeaturedBooksListView(),
                    const Gap(50),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        "Newest Books",
                        style: Theme.of(context).textTheme.titleLarge!
                            .copyWith(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          // fontFamily: Assets.kGtSectraFine,
                        ),
                      ),
                    ),
                    const Gap(20),
                  ],
                ),
              ),
              const SliverFillRemaining(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: BestSellerListview(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

