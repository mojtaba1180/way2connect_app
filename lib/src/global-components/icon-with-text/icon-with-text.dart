import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  final Color textColor;

  const IconWithText(
      {super.key,
      required this.icon,
      required this.text,
      required this.iconColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Icon(
        icon,
        color: iconColor,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 18),
        ),
      )
    ]);
  }
}
