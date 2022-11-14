import 'package:get/get.dart';

import 'package:fkeleton/app/pages/splash/controller/splash_page_controller.dart';

class SplashPageBinding extends Bindings {

  @override
  void dependencies() {
    Get.put(SplashPageController());
  }

}