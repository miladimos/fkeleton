import 'package:fkeleton/app/ui/pages/home/home_page.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AppRoutes {
  static String initialRoute = 'home';

  static var routes = [
    GetPage(name: 'home', page: () => HomePage()),

  ];
}