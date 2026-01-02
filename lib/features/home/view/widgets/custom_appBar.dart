import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/conestent/assets.dart';
import '../../../../core/conestent/colors.dart';
import '../../../../core/conestent/theme_cubit.dart';
import '../../../../core/utiles/app_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(top: 40 ,bottom: 20),
      child: Row(
        children: [
          Text("My Books",style:text.titleLarge!.copyWith(
            fontWeight: FontWeight.w600,
            fontFamily: Assets.kGtSectraFine,
          ),
          ),
Spacer(),
          IconButton(onPressed: (){
            GoRouter.of(context).push(AppRouter.searchView);
          },
              icon:const Icon(FontAwesomeIcons.magnifyingGlass,
                size: 22,)),
          Switch(
            value: context.isDark,
            onChanged: (_) {
              context.theme.toggleTheme();

            },
          ),

        ],
      ),
    );
  }
}
