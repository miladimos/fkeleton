import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fkeleton/app/utils/app_routes.dart';
import 'package:fkeleton/app/utils/translations/messages.dart';
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
      debugShowCheckedModeBanner: false,
      title: AppConstants.applicationTitle,
      theme: ThemeData(
        primaryColor: AppConstants.primaryColor,
      ),
      translations: Messages(),
      locale: const Locale('fa', 'IR') ,
      fallbackLocale: const Locale('en', 'US'),
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.routes,
    );
  }
}
