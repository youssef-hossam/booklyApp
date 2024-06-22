import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_appbar.dart';
import 'featured_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                SizedBox(
                  height: 30.h,
                ),
                SizedBox(
                  height: 170.h,
                  child: const FeaturedListViewItem(),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Best Seller",
                  style: Styles.textStyle18,
                ),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListView(
            physics: NeverScrollableScrollPhysics(),
          ),
        )
      ],
    );
  }
}
