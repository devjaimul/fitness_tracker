import 'package:flutter/material.dart';

import '../utils/colors.dart';

Widget headingTwo({
required String data,
Color? textColor,
  FontWeight? fontWeight,
}) {
  return Text(
    data,
    style: TextStyle(
        color: textColor ?? AppColors.whiteColor,
        fontSize: 30,
        fontWeight:fontWeight ?? FontWeight.w700),
  );
}
