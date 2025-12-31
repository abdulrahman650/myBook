import 'package:flutter/material.dart';

class CustomErrorsWidget extends StatelessWidget {
  const CustomErrorsWidget({super.key, required this.errorMessage});
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    return Center(
      child: Text(
        errorMessage,
        style: text.titleMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}
