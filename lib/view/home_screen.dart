import 'package:fitness_tracker/utlis/colors.dart';
import 'package:fitness_tracker/widgets/custom_item.dart';
import 'package:fitness_tracker/widgets/cutom_circle_button.dart';
import 'package:fitness_tracker/widgets/text_style.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: CircleButton(icon: Icons.menu),
        actions: [CircleButton(icon: Icons.notifications)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heading(
              data: "Make Your",
            ),
            heading(data: "Body Perfect", color: AppColors.primaryColor),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(15),
              width: size.width,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      heading(
                          data: "Full Body\nExercise X3",
                          color: Colors.black,
                          size: 25),
                     CustomItem(icon: Icons.local_fire_department_outlined, text: '1230 kCal'),
                     CustomItem(icon: Icons.access_time_rounded, text: '50 min'),

                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
