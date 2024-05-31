import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final String text;
  const CustomItem({super.key, required this.icon, this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color:color?? Colors.black.withOpacity(0.4),size: 18,),
        Text(
          text,
          style: TextStyle(color:color?? Colors.black.withOpacity(0.4),fontSize: 16),
        ),
      ],
    );
  }
}
