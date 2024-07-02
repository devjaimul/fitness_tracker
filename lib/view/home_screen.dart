import 'package:fitness_tracker/utils/text_style.dart';
import 'package:fitness_tracker/widgets/custom_circle_button.dart';
import 'package:fitness_tracker/widgets/custom_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

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
            headingTwo(data: 'Body Perfect', textColor: AppColors.primaryColor),
            const SizedBox(
              height: 10,
            ),

              Stack(

                alignment: Alignment.centerRight,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    width: size.width,
                    height: size.height *.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: AppColors.primaryColor,
                    ),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        headingTwo(
                            data: "Full Body\nExercise X3",
                            fontSize: 25,
                            textColor: Colors.black),
                        const CustomItem(
                            icon: Icons.local_fire_department_outlined,
                            text: '1230 kcl'),
                        const CustomItem(
                            icon: Icons.timer_outlined, text: '50 min'),
                        const SizedBox(
                          height: 5,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.buttonBgColor,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Start Now",
                              style: TextStyle(color: Colors.black),
                            ))
                      ],
                    ),
                  ),
                  Image.asset('assets/images/bg.png',height: 300,width: 300,)
                ],
              ),

          ],
        ),
      ),
    );
  }
}
