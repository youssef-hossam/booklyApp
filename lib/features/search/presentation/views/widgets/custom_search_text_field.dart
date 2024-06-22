import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSerachTextField extends StatelessWidget {
  const CustomSerachTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Search",
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Opacity(
              opacity: 0.5,
              child: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20.sp,
              ),
            ),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.r)))),
    );
  }
}
