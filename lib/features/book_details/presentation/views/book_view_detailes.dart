import 'package:bookly_app/features/book_details/presentation/widgets/book_view_detailes_body.dart';
import 'package:flutter/material.dart';

class BookDetailesView extends StatelessWidget {
  const BookDetailesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailesViewBody(),
    );
  }
}
