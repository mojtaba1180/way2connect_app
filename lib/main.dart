import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:way2connect/src/constants/text_strings.dart';
import 'package:way2connect/src/layouts/screens/intro/intro.dart';
import 'package:way2connect/src/layouts/screens/splash_screen/splash_screen.dart';
import 'package:way2connect/src/pages/auth/login-form.dart';
import 'package:way2connect/src/pages/home/homePage.dart';
import 'package:way2connect/src/pages/notifications/notifications.dart';
import 'package:way2connect/src/pages/tickets/tickets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: tAppName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        "/intro": (context) => const Intro(),
        "/home": (context) => const HomePage(),
        "/login": (context) => const LoginForm(),
        "/tickets": (context) => const Tickets(),
        "/notifications": (context) => const Notifications(),
      },
    );
  }
}
