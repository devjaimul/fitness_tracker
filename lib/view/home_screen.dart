import 'package:fitness_tracker/utils/text_style.dart';
import 'package:fitness_tracker/view/fitness_tracker.dart';
import 'package:fitness_tracker/widgets/custom_card.dart';
import 'package:fitness_tracker/widgets/custom_circle_button.dart';
import 'package:fitness_tracker/widgets/custom_item.dart';
import 'package:flutter/cupertino.dart';

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
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const CircleButton(icon: Icons.grid_view_outlined),
        actions: const [CircleButton(icon: Icons.notifications)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            headingTwo(data: 'Make Your '),
            headingTwo(data: 'Body Perfect', textColor: AppColors.primaryColor),
            Stack(
              alignment: Alignment.centerRight,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  width: size.width,
                  height: size.height * .25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: AppColors.primaryColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      headingTwo(
                          data: "Full Body\nExercise X3",
                          fontSize: 30,
                          textColor: Colors.black),
                      const CustomItem(
                          icon: Icons.local_fire_department_outlined,
                          text: '1230 kcl',),
                      const CustomItem(
                          icon: Icons.timer_outlined, text: '50 min'),
                      const SizedBox(
                        height: 5,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.buttonBgColor,
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const FitnessTracker(),));

                          },
                          child: const Text(
                            "Start Now",
                            style: TextStyle(color: Colors.black),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    width: size.width * .5,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.iconBgColor,
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/bg.png',
                        height: 300,
                        width: 300,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Expanded(
                  child: CustomCard(
                    icon: Icons.directions_run_outlined,
                    value1: "Running\nDistance",
                    value2: '1.8 km',
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CustomCard(
                    icon: Icons.directions_bike_outlined,
                    value1: "Total\nCycling",
                    value2: '7.3 km',
                    isDark: true,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40,),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 0, top: 5, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: AppColors.secondaryColor,
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.only(left: 15),
                title: headingTwo(data: 'Appointment', fontSize: 20),
                subtitle: headingTwo(
                    data: 'For a Exercise Practise',
                    fontSize: 16,
                    textColor: Colors.white.withOpacity(0.5)),
                trailing: const CircleButton(
                  icon: CupertinoIcons.phone,
                  backgroundColor: AppColors.primaryColor,
                  iconColor: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
