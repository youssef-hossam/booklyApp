import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.fontcolor,
      required this.backgroundColor,
      required this.borderRadius,
      required this.text,
      this.onPressed});
  final BorderRadiusGeometry borderRadius;
  final Color fontcolor;
  final Color backgroundColor;
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      // width: 150.w,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text,
            style: Styles.textStyle18
                .copyWith(color: fontcolor, fontWeight: FontWeight.bold)),
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(borderRadius: borderRadius)),
      ),
    );
  }
}
