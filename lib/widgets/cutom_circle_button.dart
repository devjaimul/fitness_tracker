import 'package:flutter/material.dart';

import '../utlis/colors.dart';

class CircleButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final IconData icon;
  final Color? iconColor;
  const CircleButton({super.key, this.height, this.width,  this.backgroundColor,  this.iconColor, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 80,
      width: width ?? 80,
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.secondaryColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Icon( icon,

          size: 30,
          color:iconColor?? AppColors.whiteColor,
        ),
      ),
    );
  }
}
