import 'package:flutter/material.dart';
import 'package:way2connect/src/constants/sizes.dart';

// ignore: must_be_immutable
class ButtonGlobal extends StatelessWidget {
  // var iconWidget;
  final String buttontext;
  // final Color iconColor;
  // final Decoration buttonDecoration;
  var onPressed;

  ButtonGlobal(
      {required this.buttontext,
      // required this.iconColor,
      // required this.buttonDecoration,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(tRoundedSize)),
            shadowColor: Colors.transparent,
            alignment: Alignment.center,
            animationDuration: const Duration(seconds: 1),
          ),
          child: Text(buttontext)),
    );
  }
}

// ignore: must_be_immutable
class ButtonGlobalWithoutIcon extends StatelessWidget {
  final String buttontext;
  final Decoration buttonDecoration;
  var onPressed;
  final Color buttonTextColor;

  ButtonGlobalWithoutIcon(
      {required this.buttontext,
      required this.buttonDecoration,
      required this.onPressed,
      required this.buttonTextColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
        decoration: buttonDecoration,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttontext,
            ),
          ],
        ),
      ),
    );
  }
}
