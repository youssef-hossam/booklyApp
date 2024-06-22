import 'package:bookly_app/core/utils/app_rounter.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailesView);
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: 10.h),
        child: Row(
          children: [
            Container(
              width: 120.w,
              height: 150.h,
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/test_image.png",
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            SizedBox(
              width: 170.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Harry Potter and the GobletofFire",
                    style: Styles.textStyle20,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  const Text(
                    "J.K. Ro`wling",
                    style: Styles.textStyle14,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '19.99 €',
                        style: Styles.textStyle20,
                      ),
                      BookRating()
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
