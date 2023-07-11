import 'package:fkeleton/app/utils/helpers.dart';
import 'package:fkeleton/app/utils/translations/translation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fkeleton/app/pages/home/controller/home_page_controller.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: null,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            child: Center(
              child: Column(
                children: [
                  Obx(
                    () => Text(
                        "current value : ${controller.currentValue.value}"),
                  ),
                  ElevatedButton(
                      onPressed: () => controller.increment(),
                      child: const Text("Increment"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
