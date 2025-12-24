import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mybook/core/conestent/themes.dart';
import 'package:mybook/core/services/services_locator.dart';
import 'package:mybook/features/home/logic/featured_books_cubit/featured_books_cubit.dart';
import 'package:mybook/features/home/logic/home_repos/home_repo_impl.dart';
import 'package:mybook/features/splash/view/splash_view.dart';

import 'core/utils/app_router.dart';
import 'features/books_details/view/book_details_view.dart';
import 'features/books_details/view/widgets_books_details/books_datiles_view_body.dart';
import 'features/home/logic/newest_books_cubit/newest_books_cubit.dart';
import 'features/home/view/home_view.dart';

void main() {
  setupServiceLocator();
  runApp(const MyBook());
}

class MyBook extends StatelessWidget {
  const MyBook({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>()..fetchFeaturedBooks()),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>()..fetchNewSetBooks()),
        ),
      ],
      child: MaterialApp.router(
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
      ),
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
