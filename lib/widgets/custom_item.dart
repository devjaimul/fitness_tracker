import 'package:flutter/cupertino.dart';

class CustomItem extends StatelessWidget {
  final IconData icon;
 final  String text;
  const CustomItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: CupertinoColors.black.withOpacity(0.5)),
        const SizedBox(width: 5,),
        Text(text,style: TextStyle(color: CupertinoColors.black.withOpacity(0.5)),),
      ],
    );
  }
}
