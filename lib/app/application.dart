import 'package:fkeleton/app/utils/themes/theme_controller.dart';
import 'package:fkeleton/app/utils/themes/themes.dart';
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

  ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.applicationTitle,
      translations: Messages(),
      locale: const Locale('fa', 'IR') ,
      fallbackLocale: const Locale('en', 'US'),
      themeMode: themeController.theme,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.routes,
    );
  }
}
