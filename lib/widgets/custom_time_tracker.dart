import 'package:flutter/material.dart';

import '../utils/text_style.dart';

class CustomTimeTracker extends StatelessWidget {
  final String time;
  final bool? isFilled;
  const CustomTimeTracker({super.key, required this.time, this.isFilled});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 7,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color:isFilled==true? Colors.black : Colors.black.withOpacity(.2),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        headingTwo(data: time,fontSize: 20,textColor: Colors.black)
      ],
    );
  }
}
