import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width / 2,
      height: MediaQuery.sizeOf(context).height / 3.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        image: const DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(
            "assets/images/test_image.png",
          ),
        ),
      ),
    );
  }
}
