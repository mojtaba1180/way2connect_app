import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:is_first_run/is_first_run.dart';
import 'package:way2connect/src/components/icon-with-text/icon-with-text.dart';
import 'package:way2connect/src/constants/app_icon_icons.dart';
import 'package:way2connect/src/constants/text_strings.dart';
import 'package:way2connect/src/pages/auth/login-form.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const IconWithText(
          icon: AppIcon.logo,
          text: tAppName,
          iconColor: Colors.blue,
          textColor: Colors.black,
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(right: 0),
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent),
                  onPressed: () async => {await IsFirstRun.reset()},
                  child: const Text(
                    "reset",
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // ignore: prefer_const_constructors
          // ignore: unnecessary_const

          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: ElevatedButton(
                onPressed: () => {
                      Get.to(() => const LoginForm(),
                          duration: const Duration(milliseconds: 300),
                          transition: Transition.fade)
                    },
                child: const Text("Login-Page")),
          )
        ],
      ),
    );
  }
}
