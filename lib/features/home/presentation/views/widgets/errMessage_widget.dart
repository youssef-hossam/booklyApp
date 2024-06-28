import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ErrMessageWidget extends StatelessWidget {
  const ErrMessageWidget({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      errorMessage,
      style: Styles.textStyle18,
    ));
  }
}
