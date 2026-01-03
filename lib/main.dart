import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mybook/core/conestent/themes.dart';
import 'package:mybook/core/services/services_locator.dart';
import 'package:mybook/features/home/logic/featured_books_cubit/featured_books_cubit.dart';
import 'package:mybook/features/home/logic/home_repos/home_repo_impl.dart';
import 'core/conestent/theme_cubit.dart';
import 'core/utiles/app_router.dart';
import 'features/home/logic/newest_books_cubit/newest_books_cubit.dart';
import 'package:device_preview/device_preview.dart';

// void main() {
//   setupServiceLocator();
//   runApp(const MyBook());
// }
void main() {
  setupServiceLocator();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyBook(),
    ),
  );
}
class MyBook extends StatelessWidget {
  const MyBook({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
          FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
            ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
          NewestBooksCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks(),
        ),
        BlocProvider(
          create: (_) => ThemeCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return MaterialApp.router(

            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,

            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
            theme: AppTheme.CustomeLightTheme,
            darkTheme: AppTheme.CustomeDarkTheme,
            themeMode: themeMode,
          );
        },
      ),
    );

  }
}
