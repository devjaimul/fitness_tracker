
import 'package:fitness_tracker/utils/text_style.dart';
import 'package:fitness_tracker/widgets/custom_circle_button.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.transparent,
       leading: const CircleButton(icon: Icons.arrow_back_ios_new_outlined),
       actions: const [CircleButton(icon: Icons.notifications)],
     ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headingTwo(data: 'Make Your '),
            headingTwo(data: 'Body Perfect',textColor: AppColors.primaryColor),


          ],
        ),
      ),
      

    );


}}

