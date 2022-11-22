import 'package:fkeleton/app/utils/translations/translation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fkeleton/app/pages/home/controller/home_page_controller.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text('hello'.tr),
              Obx(() => Text("current value : ${controller.currentValue.value}"),),
              ElevatedButton(onPressed: () => controller.increment(), child: const Text("Increment"))
            ],
          ),
        ),
      ),
    );
  }
}
