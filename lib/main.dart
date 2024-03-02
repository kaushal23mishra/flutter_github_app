import 'package:flutter/material.dart';
import 'package:flutter_github_app/src/core/common/common_fonts.dart';
import 'package:flutter_github_app/src/features/home/views/trending_repository_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Github App',
      theme: ThemeData(
        fontFamily: AllFontFamilies.poppins,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
          ),
        ),
      ),
      //  I only have two screens here, so I opted not to use GetX's page routing. I hope that's alright.
      home: TrendingRepositoriesScreen(),
    );
  }
}
