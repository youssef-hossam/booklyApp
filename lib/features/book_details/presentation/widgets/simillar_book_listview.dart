import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimiallarListView extends StatelessWidget {
  const SimiallarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(right: 10.w),
        child: AspectRatio(
          aspectRatio: 3.3 / 4,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              image: const DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(
                  "assets/images/test_image.png",
                ),
              ),
            ),
          ),
        ),
      ),
    ));
    // return GridView.builder(
    //   itemCount: 4,
    //   scrollDirection: Axis.horizontal,
    //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
    //       childAspectRatio: 1.9, maxCrossAxisExtent: 190),
    //   itemBuilder: (context, index) {
    //     return Container(
    //       decoration: BoxDecoration(
    //           image: DecorationImage(
    //               image: AssetImage('assets/images/test_image.png'))),
    //     );
    //   },
    // );
  }
}
