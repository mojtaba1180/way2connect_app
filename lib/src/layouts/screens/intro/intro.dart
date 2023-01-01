import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:way2connect/src/constants/app_icon_icons.dart';
import 'package:way2connect/src/constants/color.dart';
import 'package:way2connect/src/constants/images.dart';
import 'package:way2connect/src/constants/text_strings.dart';
import 'package:way2connect/src/global-components/icon-with-text/icon-with-text.dart';
import 'package:way2connect/src/pages/home/home.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  late PageController _pageController;
  int currentIndex = 0;
  bool islastPage = false;
  int lastIndex = 3;
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

  void handleNextPage() {
    Get.off(() => const Home());
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
          iconColor: tPrimaryColor,
          textColor: tDark,
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!islastPage) ...[
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.only(right: 0),
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent),
                    onPressed: () => {handleNextPage()},
                    child: const Text(
                      "skip",
                      style: TextStyle(color: tDark),
                    ))
              ]
            ],
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                currentIndex = page;
              });
              if (page >= lastIndex) {
                setState(() {
                  islastPage = true;
                });
              } else {
                setState(() {
                  islastPage = false;
                });
              }
            },
            children: <Widget>[
              makePage(
                  image: StepOneImage,
                  primaryTitle: "Add",
                  secondaryTitle: " Your Business\nWebsite",
                  content:
                      "You can add and manage your website with just a few clicks."),
              makePage(
                  image: StepTwoImage,
                  primaryTitle: "Manage",
                  secondaryTitle: "\nClient’s Conversations",
                  content:
                      "Talk to your clients, submit a ticket\nand register your clients as a audience."),
              makePage(
                  image: StepTreeImage,
                  primaryTitle: "Hire",
                  secondaryTitle: "\nVirtual Assistant",
                  content:
                      "We provide professional agents\nwho available 24 hours / day for your\nbusiness technical support and\nclient management."),
              makePage(
                  image: StepFourImage,
                  primaryTitle: "Monitor",
                  secondaryTitle: "            The                 Clients",
                  content:
                      "Monitor your live customers, analyze\nyour website weekly reports and\ngrow your business."),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 35),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: !islastPage ? _buildIndicator() : []),
          ),
          Container(
            padding: const EdgeInsets.only(right: 20, left: 20),
            margin: const EdgeInsets.only(bottom: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              if (currentIndex > 0) ...[
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.only(right: 35, left: 25),
                        backgroundColor:
                            const Color.fromARGB(255, 245, 245, 245),
                        shadowColor: Colors.transparent),
                    onPressed: () => {
                          _pageController.previousPage(
                              duration: const Duration(milliseconds: 800),
                              curve: Curves.easeInOutCubic)
                        },
                    child: const Icon(
                      AppIcon.arrow_left,
                      size: 13,
                      color: Colors.black,
                    ))
              ],
              const Spacer(
                flex: 2,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: tPrimaryColor,
                    shadowColor: Colors.transparent,
                    padding: const EdgeInsets.only(right: 35, left: 25),
                    alignment: Alignment.center,
                    animationDuration: const Duration(seconds: 1),
                  ),
                  onPressed: () => {
                        if (!islastPage)
                          {
                            _pageController.nextPage(
                                duration: const Duration(milliseconds: 800),
                                curve: Curves.easeInOutCubic)
                          }
                        else
                          {handleNextPage()}
                      },
                  child: islastPage
                      ? const Text("Start Your Journey")
                      : const Icon(
                          AppIcon.arrow_right,
                          size: 13,
                        ))
            ]),
          )
        ],
      ),
    );
  }

  Widget makePage({image, secondaryTitle, primaryTitle, content}) {
    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 50),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Image.asset(
            image,
            fit: BoxFit.contain,
            width: 300,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        RichText(
          textAlign: TextAlign.left,
          textDirection: TextDirection.ltr,
          text: TextSpan(
            text: primaryTitle,
            style: const TextStyle(
                color: tPrimaryColor,
                fontSize: 40,
                fontWeight: FontWeight.bold),
            children: <TextSpan>[
              TextSpan(
                  text: secondaryTitle, style: const TextStyle(color: tDark)),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          content,
          style: const TextStyle(
              color: tDarkGray, fontSize: 19, fontWeight: FontWeight.w500),
        )
      ]),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 15,
      width: 15,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: isActive ? tDarkGray : tLightGray,
          borderRadius: BorderRadius.circular(10)),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i <= lastIndex; i++) {
      if (currentIndex >= i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }
}
