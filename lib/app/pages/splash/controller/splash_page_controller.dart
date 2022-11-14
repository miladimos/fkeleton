import 'package:get/get.dart';

class SplashPageController extends GetxController {
  var currentValue = 0.obs;

  void increment() {
    currentValue++;
  }

}