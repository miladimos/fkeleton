import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fkeleton/app/pages/splash/controller/splash_page_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final splashController = Get.find<SplashPageController>();

    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Splash")
        ),
      ),
    );
  }
}
