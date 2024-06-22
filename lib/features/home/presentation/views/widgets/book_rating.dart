import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
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
        const Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: 9.w,
        ),
        Text(
          "(212)",
          style: Styles.textStyle16.copyWith(
            color: const Color(0xff707070),
          ),
        )
      ],
    );
  }
}
