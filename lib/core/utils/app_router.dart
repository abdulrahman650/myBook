import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const homeView = '/homeView';
  static const bookDetailsView = '/bookDetailsView';
  static const searchView = '/searchView';
  static const String SplashView = '/SplashView';


// static final router = GoRouter(
  //   routes: [
  //     GoRoute(
  //       path: '/',
  //       builder: (context, state) => const SplashView(),
  //     ),
  //     GoRoute(
  //       path: kSearchView,
  //       builder: (context, state) => const SearchView(),
  //     ),
  //     GoRoute(
  //       path: kHomeView,
  //       builder: (context, state) => const HomeView(),
  //     ),
  //     GoRoute(
  //       path: kBookDetailsView,
  //       builder: (context, state) => BlocProvider(
  //         create: (context) => SimilarBooksCubit(
  //           getIt.get<HomeRepoImpl>(),
  //         ),
  //         child: BookDetailsView(
  //           bookModel: state.extra as BookModel,
  //         ),
  //       ),
  //     ),
  //   ],
  // );
}
