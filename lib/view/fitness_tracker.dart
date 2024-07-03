import 'package:fitness_tracker/utils/text_style.dart';
import 'package:fitness_tracker/widgets/custom_card.dart';
import 'package:fitness_tracker/widgets/custom_circle_button.dart';
import 'package:fitness_tracker/widgets/custom_health_item.dart';
import 'package:fitness_tracker/widgets/custom_item.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import '../utils/colors.dart';

class FitnessTracker extends StatefulWidget {
  const FitnessTracker({super.key});

  @override
  State<FitnessTracker> createState() => _FitnessTrackerState();
}

class _FitnessTrackerState extends State<FitnessTracker> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const CircleButton(icon: Icons.arrow_back_ios_new_rounded),
        actions: const [CircleButton(icon: Icons.notifications)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headingTwo(data: 'Health'),
            headingTwo(data: 'Overview', textColor: AppColors.primaryColor),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomHealthItem(title: 'Calories', subTitle: '1360 KCal'),
                CustomHealthItem(title: 'Protein', subTitle: '30 Gram'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomHealthItem(title: 'Sleep', subTitle: '3 Hours'),
                CustomHealthItem(title: 'Weight', subTitle: '67 Kg'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              width: size.width,
              //height: size.height * .25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: AppColors.primaryColor,
              ),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleButton(
                  icon: CupertinoIcons.suit_heart,
                  iconColor: Colors.black,
                  backgroundColor: AppColors.iconBgColor,
                ),
                title: headingTwo(data: '851 ms',textColor: Colors.black,fontSize: 35),
                subtitle: headingTwo(data: 'R-R interval ',textColor: Colors.black.withOpacity(0.5),fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
