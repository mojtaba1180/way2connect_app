import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:is_first_run/is_first_run.dart';
import 'package:way2connect/src/components/pending-message/pending-message.dart';
import 'package:way2connect/src/components/tab-bar/tab-bar.dart';
import 'package:way2connect/src/constants/color.dart';
import 'package:way2connect/src/constants/sizes.dart';
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
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
          size: 40,
        ),
        titleSpacing: 0,
        elevation: 0,
        title: const Text(
          "Inbox",
          style: TextStyle(color: tDark),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(right: 30),
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent),
                  onPressed: () async => {await IsFirstRun.reset()},
                  child: const Text(
                    "mywebsite.com",
                    style: TextStyle(
                        color: Colors.black, fontSize: tPrimaryFontSize),
                  ))
            ],
          )
        ],
      ),
      body: Stack(
        children: [
          // ignore: prefer_const_constructors
          // ignore: unnecessary_const
          PendingMessage(context),
          Container(
              margin: const EdgeInsets.only(top: 180),
              width: double.infinity,
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                children: [
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: tLightGray,
                        borderRadius: BorderRadius.circular(10)),
                    child: const TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.search,
                          size: 30,
                          color: tDark,
                        ),
                        border: InputBorder.none,
                        filled: true,
                        hintText: "Search",
                        fillColor: Colors.transparent,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 400,
                    child: StackOver(),
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
              )),
        ],
      ),
    );
  }
}
