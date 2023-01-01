import 'package:get/get.dart';
import 'package:is_first_run/is_first_run.dart';
import 'package:way2connect/src/layouts/screens/intro/intro.dart';
import 'package:way2connect/src/pages/home/home.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();
  // ignore: non_constant_identifier_names
  Future StartSplash(context) async {
    await Future.delayed(const Duration(seconds: 5));
    bool firstRun = await IsFirstRun.isFirstRun();
    // Get.to(() => const Intro());
    if (firstRun) {
      Get.off(() => const Intro(),
          duration: const Duration(seconds: 1), transition: Transition.fade);
    } else {
      Get.off(() => const Home(),
          duration: const Duration(seconds: 1), transition: Transition.fade);
    }
    // Navigator.pushNamed(context, "/intro");
  }
}
