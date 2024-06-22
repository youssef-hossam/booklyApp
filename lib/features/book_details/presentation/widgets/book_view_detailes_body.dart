import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/book_details/presentation/widgets/books_action.dart';
import 'package:bookly_app/features/book_details/presentation/widgets/custom_book_detailes_appBar.dart';
import 'package:bookly_app/features/book_details/presentation/widgets/custom_book_image.dart';
import 'package:bookly_app/features/book_details/presentation/widgets/simillar_book_listview.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                children: [
                  const CustomBookDetailsAppBar(),
                  SizedBox(
                    height: 10.h,
                  ),
                  const CustomBookImage(),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Text(
                    "The Jungle Book",
                    style: Styles.textStyle30,
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    "Rudyard Kipling",
                    style: Styles.textStyle18.copyWith(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  const BookRating(
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  const BooksAction(),
                  SizedBox(
                    height: 50.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "You can also like",
                          style: Styles.textStyle16,
                        )),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  SimiallarListView(),
                  SizedBox(
                    height: 20.h,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
