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
        children: [
          const CustomAppBar(),
         const CustomListViewItem(),


        ]);
  }
}

