import 'package:flutter/material.dart';

import '../utils/colors.dart';

Widget headingTwo({
required String data,
Color? textColor,
  FontWeight? fontWeight,
  double? fontSize,
}) {
  return Text(
    data,
    style: TextStyle(
        color: textColor ?? AppColors.whiteColor,
        fontSize: fontSize ?? 40,
        fontWeight:fontWeight ?? FontWeight.w700),
  );
}

Widget headingThree({
  required String data,
  Color? textColor,
  FontWeight? fontWeight,
  double? fontSize,
}) {
  return Text(
    data,
    style: TextStyle(
        color: textColor ?? AppColors.whiteColor.withOpacity(0.4),
        fontSize: fontSize ?? 18,
        fontWeight:fontWeight ?? FontWeight.w500),
  );
}