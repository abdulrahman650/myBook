import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/conestent/assets.dart';
import 'custom_ListViewItem.dart';
import 'custom_appBar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children:const [
           CustomAppBar(),
          FeaturedBooksListView(),

        ]);
  }
}

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
        return Padding(
          padding:  EdgeInsets.symmetric(horizontal: 8.0),
          child:  FeaturedListViewItem(),
        );
      }),
    );
  }
}
