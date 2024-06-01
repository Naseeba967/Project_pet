import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_pal/features/home.dart';

import 'package:pet_pal/features/pet%20care%20module/pet_care_screen.dart';
import 'package:pet_pal/features/splash_screen.dart';

import 'package:pet_pal/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/splash-screen': (context) => SplashScreen(),
        '/home': (context) => HomeScreen(),
        // '/pet-search': (context) => PetSearchScreen(),
        '/pet-care': (context) => PetCareScreen(),
      },
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
