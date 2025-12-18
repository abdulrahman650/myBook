import 'package:flutter/material.dart';

import '../../../../core/conestent/assets.dart';
class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(16),
            color: Colors.white,
            image: DecorationImage(image:AssetImage( Assets.imagesTestImage,
            ),fit: BoxFit.fill)
        ),
      ),
    );
  }
}