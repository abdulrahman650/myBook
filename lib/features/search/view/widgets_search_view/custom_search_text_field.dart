import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mybook/core/conestent/theme_cubit.dart';

import '../../../../core/conestent/colors.dart';
import '../../logic/search_cubit/search_cubit.dart';

// class CustomSearchTextField extends StatelessWidget {
//   const CustomSearchTextField({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       onChanged: (value) {
//         BlocProvider.of<SearchCubit>(context)
//             .searchBooks(query: value);
//       },
//
//       // onSubmitted: (value) {
//       //   BlocProvider.of<SearchCubit>(context).SearchBooks(query: value);
//       // },
//       decoration: InputDecoration(
//         enabledBorder: buildOutlineInputBorder(),
//         focusedBorder: buildOutlineInputBorder(),
//         hintText: 'Search',
//         hintStyle: TextStyle(
//           color: context.isDark
//           ? AppColors.white
//           : AppColors.black,
//         ),
//         suffixIcon: IconButton(
//           onPressed: () {
//             FocusScope.of(context).unfocus();
//           },
//           icon: const Opacity(
//             opacity: .8,
//             child: Icon(
//               FontAwesomeIcons.magnifyingGlass,
//               size: 22,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   OutlineInputBorder buildOutlineInputBorder() {
//     return OutlineInputBorder(
//       borderSide: const BorderSide(
//         color: Colors.grey,
//       ),
//       borderRadius: BorderRadius.circular(
//         12,
//       ),
//     );
//   }
// }
class CustomSearchTextField extends StatefulWidget {
  const CustomSearchTextField({super.key});

  @override
  State<CustomSearchTextField> createState() =>
      _CustomSearchTextFieldState();
}

class _CustomSearchTextFieldState extends State<CustomSearchTextField> {
  final TextEditingController _controller = TextEditingController();
  Timer? _debounce;

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _onSearchChanged(String value) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();

    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (value.trim().isEmpty) return;

      context
          .read<SearchCubit>()
          .searchBooks(query: value.trim());
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      onChanged: _onSearchChanged,
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: 'Search',
        hintStyle: TextStyle(
          color: context.isDark
              ? AppColors.white
              : AppColors.black,
        ),
        suffixIcon: IconButton(
          onPressed: () {
            _controller.clear();
            FocusScope.of(context).unfocus();
          },
          icon: const Opacity(
            opacity: .8,
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
