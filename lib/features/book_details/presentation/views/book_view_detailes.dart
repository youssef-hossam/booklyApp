import 'package:bookly_app/features/book_details/presentation/widgets/book_view_detailes_body.dart';
import 'package:bookly_app/features/home/data/models/book_model/book.dart';
import 'package:flutter/material.dart';

class BookDetailesView extends StatelessWidget {
  const BookDetailesView({super.key, required this.books});
  final BookModel books;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailesViewBody(
        category: books.volumeInfo!.categories![0],
        book: books,
      ),
    );
  }
}
