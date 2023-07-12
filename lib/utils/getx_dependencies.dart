import 'package:bitcoin_ticker/controller/currencyController.dart';
import 'package:get/get.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CurrencyController());
  }
}