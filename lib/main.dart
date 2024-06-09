import 'package:fitness_tracker/utlis/colors.dart';
import 'package:fitness_tracker/view/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffE7FD54)),
          scaffoldBackgroundColor: AppColors.backgroundColor,

    ),
      home: const HomeScreen(),
    );
  }
}
