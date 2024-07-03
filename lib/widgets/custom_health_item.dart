
import 'package:flutter/material.dart';


import '../utils/colors.dart';
import '../utils/text_style.dart';

class CustomHealthItem extends StatelessWidget {
  final String title;
  final String subTitle;
  const CustomHealthItem({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return  Row(


      children: [
        Container(
          height: 10,
          width: 10,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primaryColor
          ),
        ),
        const SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            headingTwo(data: title,fontSize: 25),
            headingTwo(data: subTitle,fontSize: 18,textColor: Colors.white.withOpacity(0.4)),
          ],)
      ],);
  }
}
