import 'dart:async';

import 'package:flutter/material.dart';

import 'package:pet_pal/image_strings.dart';
import 'package:pet_pal/utils/constant/colors.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Hide the status bar for a cleaner look

    // Navigate to the home screen after a delay
    Timer(const Duration(seconds: 10),
        () => Navigator.pushReplacementNamed(context, '/sign-Up'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor, // Adjust color as needed
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Replace with your app logo or image
            Image.asset(AppImage.splashImage,
                color: Colors.white, width: 200, height: 200),
            // ignore: prefer_const_constructors
            SizedBox(height: 20),
            // Add a text widget for your app name (optional)
            const Text(
              'Pet Pal',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
