import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mybook/core/conestent/themes.dart';
import 'package:mybook/features/splash/view/splash_view.dart';

import 'core/utils/app_router.dart';
import 'features/books_details/view/book_details_view.dart';
import 'features/books_details/view/widgets_books_details/books_datiles_view_body.dart';
import 'features/home/view/home_view.dart';
void main() {
  runApp(const MyBook());
}

class MyBook extends StatelessWidget {
  const MyBook({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.CustomeDarkTheme,
      darkTheme: AppTheme.CustomeDarkTheme,

      // home: const SplashView(),
//       routes:{
//   AppRouter.SplashView: (_) => SplashView(),
//   AppRouter.homeView: (_) => HomeView(),
//   AppRouter.bookDetailsView: (_) => BookDetailsView(),
// }
    );
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: AppTheme.CustomeDarkTheme,
//       darkTheme: AppTheme.CustomeDarkTheme,
//         initialRoute:  AppRouter.SplashView,
// routes:{
//   AppRouter.SplashView: (_) => SplashView(),
//   AppRouter.homeView: (_) => HomeView(),
//   AppRouter.bookDetailsView: (_) => BookDetailsView(),
// }
//      // textTheme:
//       // GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
//       // home: SplashView(),
//     );
  }
}


