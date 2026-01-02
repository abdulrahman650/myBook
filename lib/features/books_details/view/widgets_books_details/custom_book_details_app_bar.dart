import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mybook/core/conestent/colors.dart';
import 'package:mybook/features/home/view/home_view.dart';

import '../../../../core/conestent/theme_cubit.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
          icon:  Icon(Icons.close,
            color:context.isDark
                ? AppColors.white
                : AppColors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart_outlined,
            color:context.isDark
                ? AppColors.white
                : AppColors.black,
          ),
        ),
      ],
    );
  }
}
