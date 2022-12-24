import 'package:flutter/material.dart';
import 'package:way2connect/src/constants/images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Positioned(
              top: 0,
              left: 0,
              child: Image(
                image: AssetImage(tSplashLogo),
              ))
        ],
      ),
    );
  }
}
