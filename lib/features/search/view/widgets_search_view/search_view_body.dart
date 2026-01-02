import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mybook/core/conestent/theme_cubit.dart';
import 'package:mybook/features/search/view/widgets_search_view/search_result_listview.dart';

import '../../../../core/conestent/colors.dart';
import 'custom_search_text_field.dart';
class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 30,top: 20,),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                  );
                },
                icon:  Icon(Icons.arrow_back_ios,
                  color:context.isDark
                      ? AppColors.white
                      : AppColors.black,
                ),
              ),
              Expanded(child: CustomSearchTextField()),
            ],
          ),
        ),
        Gap(16),
        Text(
          'Search Result',
          style: text.titleMedium,
        ),
        Gap(16),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SearchResultListView(),
          ),
        ),
      ],
    );
  }
}

