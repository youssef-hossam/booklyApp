import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/app_rounter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme: GoogleFonts.montserratTextTheme(
              ThemeData.dark().textTheme,
            )),
      ),
    );
  }
}
