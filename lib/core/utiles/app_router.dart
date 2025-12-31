import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mybook/features/books_details/view/book_details_view.dart';

import '../../features/books_details/logic/similar_books_cubit/similar_books_cubit.dart';
import '../../features/home/data/book_model/book_model.dart';
import '../../features/home/logic/home_repos/home_repo_impl.dart';
import '../../features/home/view/home_view.dart';
import '../../features/search/view/search_view.dart';
import '../../features/splash/view/splash_view.dart';
import '../services/services_locator.dart';

abstract class AppRouter {
  static const homeView = '/homeView';
  static const bookDetailsView = '/bookDetailsView';
  static const searchView = '/searchView';
  // static const String SplashView = '/SplashView';


  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      // GoRoute(
      //   path: bookDetailsView,
      //   builder: (context, state) => const BookDetailsView(),
      // ),
      GoRoute(
        path: bookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
    ],
  );
}