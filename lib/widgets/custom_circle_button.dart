import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Color? iconColor;
  const CircleButton({super.key, required this.icon, this.height, this.width, this.backgroundColor, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height:height?? 80,
        width:width?? 80,
        decoration:  BoxDecoration(
          color: backgroundColor ?? AppColors.whiteColor.withOpacity(.1),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(
            icon,
            size: 30,
            color: iconColor?? AppColors.whiteColor.withOpacity(0.7),
          ),
        ),
      ),
    );
  }
}
