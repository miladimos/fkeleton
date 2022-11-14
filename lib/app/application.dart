import 'package:fkeleton/app/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:fkeleton/app/utils/app_constants.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppConstants.applicationTitle,
      theme: ThemeData(
        primaryColor: AppConstants.primaryColor,
      ),
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.routes,
    );
  }
}
