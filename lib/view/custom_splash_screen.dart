import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
// تدخل يدويا
// ignore: depend_on_referenced_packages
import 'package:page_transition/page_transition.dart';

class CustomSplashScreen extends StatelessWidget {
  const CustomSplashScreen(
      {super.key, required this.splashImage, required this.nextScreen});
  final String splashImage;
  final Widget nextScreen;

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        curve: Curves.easeInOut,
        pageTransitionType: PageTransitionType.leftToRight,
        splashIconSize: MediaQuery.of(context).size.width * 0.8,
        splashTransition: SplashTransition.fadeTransition,
        splash: Image(
          image: AssetImage(splashImage),
        ),
        nextScreen: nextScreen);
  }
}
