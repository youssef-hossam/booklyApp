import 'package:bookly_app/core/utils/custom_progress_indicator.dart';
import 'package:bookly_app/core/utils/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/manger/featured_book_cubit/featured_books_list_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/errMessage_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksListCubit, FeaturedBooksListState>(
      builder: (context, state) {
        if (state is FeaturedBooksListSuccess) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(right: 5.w),
              child: CustomBookImage(
                  imageUrl:
                      state.books[index].volumeInfo!.imageLinks!.thumbnail!),
            ),
          );
        } else if (state is FeaturedBooksListFailure) {
          return ErrMessageWidget(errorMessage: state.errMessage);
        } else {
          return const CustomProgressIndicator();
        }
      },
    );
  }
}
// GridView.builder(
//       itemCount: 4,
//       scrollDirection: Axis.horizontal,
//       gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//           childAspectRatio: 1.4, maxCrossAxisExtent: 240),
//       itemBuilder: (context, index) {
//         return Container(
//           decoration: BoxDecoration(
//               image: DecorationImage(
//                   image: AssetImage('assets/images/test_image.png'))),
//         );
//       },
//     );GridView.builder(
          //   itemCount: 4,
          //   scrollDirection: Axis.horizontal,
          //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          //       childAspectRatio: 1.4, maxCrossAxisExtent: 240),
          //   itemBuilder: (context, index) {
          //     return CustomBookImage(
          //       imageUrl: state.books[index].volumeInfo!.imageLinks!.thumbnail!,
          //     );
          //   },
          // );