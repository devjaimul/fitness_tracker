import 'package:fitness_tracker/utlis/colors.dart';
import 'package:fitness_tracker/view/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backGroundColor,
      ),
      home: HomeScreen(),
    );
  }
}
