import 'package:fitness_tracker/utlis/colors.dart';
import 'package:flutter/material.dart';

Widget heading({
  required String data,
  Color? color,
  FontWeight? fontWeight,
  double? size,
}) {
  return Text(
    data,
    style: TextStyle(
      color: color ?? AppColors.whiteColor,
      fontSize: size ?? 30,
      fontWeight: fontWeight ?? FontWeight.w700,
    ),
  );
}
