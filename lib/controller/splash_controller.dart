import 'package:bitcoin_ticker/screens/home_screen.dart';
import 'package:get/get.dart';


class SplashScreenController extends GetxController {

  @override
  void onInit() async {
    await navigateToHome();
    super.onInit();
  }

  navigateToHome() async {
    await Future.delayed(const Duration(seconds: 5), () {});
    Get.offAll(() => const HomeScreen());
  }
}