import 'package:flutter/material.dart';
import 'package:way2connect/src/constants/color.dart';
import 'package:way2connect/src/global-components/pending-message/pending-message.dart';
import 'package:way2connect/src/global-components/tab-bar/tab-bar.dart';

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
                  Expanded(
                    child: StackOver(),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
