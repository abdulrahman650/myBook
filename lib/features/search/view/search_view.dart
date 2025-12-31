import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mybook/features/search/view/widgets_search_view/search_view_body.dart';

import '../../../core/services/api_services.dart';
import '../../../core/services/services_locator.dart';
import '../logic/repos/search_repo_impl.dart';
import '../logic/search_cubit/search_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) =>
              SearchCubit(SearchRepoImpl(getIt.get<ApiService>())),
          child: const SearchViewBody(),
        ),
      ),
    );


  }
}
