import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fkeleton/app/pages/home/controller/home_page_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final homeController = Get.find<HomePageController>();

    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text("current value : "),

            ],
          ),
        ),
      ),
    );
  }
}
