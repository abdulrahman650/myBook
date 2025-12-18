import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

import '../../../../core/conestent/assets.dart';
import 'custom_ListViewItem.dart';
import 'custom_appBar.dart';
import 'feature_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             CustomAppBar(),
            FeaturedBooksListView(),
            Gap(50),
            Text("Best Seller",
              style:text.titleLarge!.copyWith(
                fontSize: 22,
              ),
            ),

          ]),
    );
  }
}

