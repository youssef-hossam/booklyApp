import 'package:bookly_app/core/utils/app_rounter.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> slidinganimation;
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    IntialSlidingAnimation();
    NavigateToHome();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  void NavigateToHome() {
    Future.delayed(
      Duration(seconds: 3),
      () {
        // Get.to(() => HomeView(), transition: Transition.fadeIn);
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) => HomeView(),
        //     ));
        GoRouter.of(context).push(AppRouter.kHomeView);
      },
    );
  }

  void IntialSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidinganimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'assets/images/logo.png',
        ),
        const SizedBox(
          height: 4,
        ),
        SlidingText(
          slidinganimation: slidinganimation,
        ),
      ],
    );
  }
}
