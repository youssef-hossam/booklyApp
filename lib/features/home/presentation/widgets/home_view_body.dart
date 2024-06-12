import 'package:bookly_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_appbar.dart';
import 'featured_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        SizedBox(
          height: 30.h,
        ),
        SizedBox(height: 170.h, child: const FeaturedListViewItem())
      ],
    );
  }
}
