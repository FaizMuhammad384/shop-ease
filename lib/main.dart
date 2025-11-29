import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_ease/core/utils/constant.dart';
import 'package:shop_ease/features/auth/src/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Shop Ease',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: appMainColor),
        scaffoldBackgroundColor: bgColor,
        appBarTheme: AppBarTheme(
          backgroundColor: bgColor,
          elevation: 0,
          surfaceTintColor: bgColor,
          centerTitle: true,
        ),
      ),
      home: const LoginScreen(),
    );
  }
}


