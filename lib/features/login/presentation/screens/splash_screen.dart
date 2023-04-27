import 'dart:async';
import 'package:effa/core/utils/resources/app_strings.dart';
import 'package:effa/core/utils/resources/constants_manager.dart';
import 'package:effa/core/utils/resources/extensions_manager.dart';
import 'package:effa/features/login/presentation/screens/logIn_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      navigateAndFinish(context, const LogInScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenSizes.screenHeight = MediaQuery.of(context).size.height;
    ScreenSizes.screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              AppString.splashBackgroundPath,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Center(
              child: svgImage(path: AppString.effaLogoPath),
            ),
          ],
        ),
      ),
    );
  }
}
