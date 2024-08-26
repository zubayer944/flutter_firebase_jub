import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Image.asset(
            "assets/splash_icons/logo.png",
            height: 15.h,
            width: 30.w,
            fit: BoxFit.cover,
          ),
          const Spacer(),
          Image.asset(
            "assets/icons/apex_dmit.png",
            height: 10.h,
          )
        ],
      ),
    );
  }
}
