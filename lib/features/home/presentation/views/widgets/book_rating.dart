import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final int rating;
  final int ratingCount;
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.ratingCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: const Color(0xffFFDD4F),
          size: 15.sp,
        ),
        SizedBox(
          width: 6.3.w,
        ),
        Text(
          "$rating",
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: 9.w,
        ),
        Text(
          "($ratingCount)",
          style: Styles.textStyle16.copyWith(
            color: const Color(0xff707070),
          ),
        )
      ],
    );
  }
}
