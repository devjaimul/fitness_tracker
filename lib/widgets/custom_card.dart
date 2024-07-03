
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/text_style.dart';
import 'custom_circle_button.dart';

class CustomCard extends StatelessWidget {
  final IconData icon;
  final String value1;
  final String value2;
  final bool? isDark;

  const CustomCard({super.key, required this.icon, required this.value1, required this.value2, this.isDark});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: isDark==true ? AppColors.secondaryColor: AppColors.primaryColor ,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: CircleButton(
              icon: icon,
              iconColor:isDark==true? Colors.white: Colors.black,
              backgroundColor:isDark==true? AppColors.iconDarkBgColor: AppColors.iconBgColor,
            ),
          ),
          headingTwo(
              data: value1,
              fontSize: 20,
              textColor: isDark==true? Colors.white.withOpacity(0.5): Colors.black.withOpacity(0.5),
              fontWeight: FontWeight.w500),
          headingTwo(data: value2, textColor: isDark==true? Colors.white: Colors.black),
        ],
      ),
    );
  }
}
