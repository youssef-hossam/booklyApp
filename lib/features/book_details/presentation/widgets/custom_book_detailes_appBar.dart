import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.close,
              size: 30.sp,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              size: 30.sp,
            ))
      ],
    );
  }
}
