import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomButton(
              text: '19.99€',
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  bottomLeft: Radius.circular(12.r)),
              fontcolor: Colors.black,
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free preview',
              backgroundColor: const Color(0xffEF8262),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12.r),
                  bottomRight: Radius.circular(12.r)),
              fontcolor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
