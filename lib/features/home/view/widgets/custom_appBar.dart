import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(top: 40 ,bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("My Books",style:text.titleLarge!.copyWith(
            fontWeight: FontWeight.bold,
          ),
          ),
          IconButton(onPressed: (){},
              icon:const Icon(FontAwesomeIcons.magnifyingGlass,
                size: 24,))
        ],
      ),
    );
  }
}
