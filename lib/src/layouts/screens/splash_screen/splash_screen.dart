import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:way2connect/src/constants/app_icon_icons.dart';
import 'package:way2connect/src/constants/color.dart';
import 'package:way2connect/src/constants/sizes.dart';
import 'package:way2connect/src/constants/text_strings.dart';
import 'package:way2connect/src/controller/splash_screen_controller/splash_screen_controller.dart';

import '../../../global-components/icon-with-text/icon-with-text.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final SplashController = Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    SplashController.StartSplash(context);
    double cWidth = MediaQuery.of(context).size.width * 0.8;

    return Scaffold(
        backgroundColor: tPrimaryColor,
        body: SafeArea(
          child: Stack(
            children: [
              Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    const Icon(
                      AppIcon.logo,
                      size: 130,
                      color: Colors.white,
                    ),
                    const Padding(padding: EdgeInsets.all(6)),
                    LoadingAnimationWidget.discreteCircle(
                        color: Colors.white,
                        size: 19,
                        secondRingColor: Colors.white70,
                        thirdRingColor: Colors.white54)
                  ])),
              AnimatedPositioned(
                  duration: const Duration(milliseconds: 1200),
                  bottom: tDefaultSize,
                  left: tDefaultSize,
                  width: cWidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      IconWithText(
                          icon: AppIcon.blob,
                          text: "Did you know?",
                          iconColor: Colors.white,
                          textColor: Colors.white),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          tSplashText,
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
