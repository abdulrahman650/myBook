import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mybook/core/conestent/themes.dart';
import 'package:mybook/features/splash/view/splash_view.dart';

void main() {
  runApp(const MyBook());
}

class MyBook extends StatelessWidget {
  const MyBook({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.CustomeDarkTheme,
      darkTheme: AppTheme.CustomeDarkTheme,

     // textTheme:
      // GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      home: SplashView(),
    );
  }
}


