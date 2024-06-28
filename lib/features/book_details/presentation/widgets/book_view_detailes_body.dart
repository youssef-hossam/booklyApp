import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/book_details/presentation/widgets/books_action.dart';
import 'package:bookly_app/features/book_details/presentation/widgets/custom_book_detailes_appBar.dart';
import 'package:bookly_app/core/utils/custom_book_image.dart';
import 'package:bookly_app/features/book_details/presentation/widgets/simillar_book_listview.dart';
import 'package:bookly_app/features/home/data/models/book_model/book.dart';
import 'package:bookly_app/features/home/presentation/manger/simillar_books_cubit/simillar_books_cubit.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailesViewBody extends StatefulWidget {
  const BookDetailesViewBody(
      {super.key, required this.category, required this.book});
  final BookModel book;
  final String category;
  @override
  State<BookDetailesViewBody> createState() => _BookDetailesViewBodyState();
}

class _BookDetailesViewBodyState extends State<BookDetailesViewBody> {
  @override
  void initState() {
    BlocProvider.of<SimillarBooksCubit>(context)
        .fetchSimillarBooks(category: widget.category);
    super.initState();
  }

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
                  SizedBox(
                    height: 150,
                    width: 120,
                    child: CustomBookImage(
                        imageUrl: widget
                                .book.volumeInfo!.imageLinks!.thumbnail ??
                            "https://i.pinimg.com/originals/4f/5f/84/4f5f84b3b3428dd7560ef5d2b3d56a83.jpg"),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    widget.book.volumeInfo!.title ?? "",
                    style: Styles.textStyle30,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    widget.book.volumeInfo!.authors!.first,
                    style: Styles.textStyle18.copyWith(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  BookRating(
                    mainAxisAlignment: MainAxisAlignment.center,
                    ratingCount: widget.book.volumeInfo!.ratingsCount ?? 0,
                    rating: widget.book.volumeInfo!.averageRating ?? 0,
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  BooksAction(
                    book: widget.book,
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "You can also like",
                          style: Styles.textStyle16,
                        )),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  const SimiallarListView(),
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
