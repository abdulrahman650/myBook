import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utiles/custom_error_widget.dart';
import '../../../home/view/widgets/best_seller_listView_item.dart';
import '../../logic/search_cubit/search_cubit.dart';
class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is SearchFailure) {
          return CustomErrorsWidget(errorMessage: state.errMessage);
        } else if (state is SearchSuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(bookModel: state.books[index]),
              );
            },
          );
        } else {
          return const Center(child: Text('Search for any Book'));
        }
      },
    );

    // return ListView.builder(
    //   padding: EdgeInsets.zero,
    //   itemCount: 10,
    //   itemBuilder: (context, index) {
    //     return Padding(
    //       padding: const EdgeInsets.symmetric(vertical: 10.0),
    //       // child: const BookListViewItem(),
    //       child: Text('data'),
    //     );
    //   },
    // );
  }
}

