import 'package:bookly_app/core/utils/custom_progress_indicator.dart';
import 'package:bookly_app/features/home/presentation/manger/newesed_books_cubit/newesed_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/errMessage_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key, this.physics, this.shrinkWrap = false});
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewesedBooksCubit, NewesedBooksState>(
      builder: (context, state) {
        if (state is NewesedBooksSuccess) {
          return ListView.builder(
              shrinkWrap: shrinkWrap,
              physics: physics,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return BestSellerListViewItem(
                  books: state.books[index],
                );
              });
        } else if (state is NewesedBooksFailure) {
          return ErrMessageWidget(errorMessage: state.errMessage);
        } else {
          return const CustomProgressIndicator();
        }
      },
    );
  }
}
