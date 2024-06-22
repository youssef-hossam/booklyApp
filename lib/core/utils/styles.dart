import 'package:bookly_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles {
  // static TextStyle titleMideum = TextStyle(
  //   fontSize: 16.sp,
  //   fontWeight: FontWeight.w600,
  // );

  static const textStyle20 = TextStyle(
      fontSize: 20,
      fontFamily: AssestsData.kGTSectraFine,
      fontWeight: FontWeight.normal);
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontFamily: AssestsData.kMontserrat,
    fontWeight: FontWeight.w500,
  );
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontFamily: AssestsData.kMontserrat,
    fontWeight: FontWeight.w500,
  );
  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static const textStyle30 = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.normal,
      fontFamily: AssestsData.kGTSectraFine);
}
