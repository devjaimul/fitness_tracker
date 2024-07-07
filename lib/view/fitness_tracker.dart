import 'package:fitness_tracker/utils/text_style.dart';

import 'package:fitness_tracker/widgets/custom_circle_button.dart';
import 'package:fitness_tracker/widgets/custom_health_item.dart';
import 'package:fitness_tracker/widgets/custom_time_tracker.dart';
import 'package:fitness_tracker/widgets/custom_tracker_chart.dart';

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
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const CircleButton(icon: Icons.arrow_back_ios_new_rounded)),
        actions: const [CircleButton(icon: Icons.notifications)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headingTwo(data: 'Healthh'),
            headingTwo(data: 'Overview', textColor: AppColors.primaryColor),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomHealthItem(title: 'Calories', subTitle: '1360 KCal'),
                CustomHealthItem(title: 'Protein', subTitle: '30 Gram'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomHealthItem(title: 'Sleep', subTitle: '3 Hours'),
                CustomHealthItem(title: 'Weight', subTitle: '67 Kg'),
              ],
            ),
            const SizedBox(
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
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: const CircleButton(
                      icon: CupertinoIcons.suit_heart,
                      iconColor: Colors.black,
                      backgroundColor: AppColors.iconBgColor,
                    ),
                    title: headingTwo(
                        data: '851 ms', textColor: Colors.black, fontSize: 35),
                    subtitle: headingTwo(
                        data: 'R-R interval ',
                        textColor: Colors.black.withOpacity(0.5),
                        fontSize: 20),

                    //last 30 min ase
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Expanded(
                          child: CustomTimeTracker(
                        time: '850 ms',
                        isFilled: true,
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(child: CustomTimeTracker(time: '830 ms')),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(child: CustomTimeTracker(time: '810 ms')),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              width: size.width,
              //height: size.height * .25,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.primaryColor),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      headingTwo(data: 'Blood Pressure', fontSize: 20),
                      Row(
                        children: [
                          headingTwo(
                              data: 'Weekly ',
                              fontSize: 20,
                              textColor: Colors.white.withOpacity(0.4)),
                          Icon(
                            Icons.arrow_drop_down_circle_outlined,
                            color: Colors.white.withOpacity(0.4),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTrackerChart(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
