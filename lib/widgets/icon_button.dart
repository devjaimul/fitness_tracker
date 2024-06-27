import 'package:flutter/material.dart';

import '../utlis/colors.dart';
class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final double? height;
  final double? width;
  final Color? backgroundColor ;
  const CustomIconButton({super.key, required this.icon, this.height, this.width, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height??0,
      width: width??80,
      decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.secondaryColor,
          shape: BoxShape.circle
      ),
      child: Icon(icon,color: AppColors.whiteColor,size: 25,),
    );
  }
}
