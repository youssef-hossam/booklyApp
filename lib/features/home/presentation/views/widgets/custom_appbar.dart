import 'package:bookly_app/core/utils/app_rounter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constant.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.h, left: 5.w, right: 5.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssestsData.logo,
            width: 100.w,
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchView);
            },
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20.sp,
            ),
          )
        ],
      ),
    );
  }
}
