import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fkeleton/app/pages/home/ui/home_page.dart';
import 'package:fkeleton/app/pages/home/binding/home_page_binding.dart';
import 'package:fkeleton/app/pages/splash/ui/splash_page.dart';
import 'package:fkeleton/app/pages/splash/binding/splash_page_binding.dart';

class AppRoutes {
  static String initialRoute = 'home';

  static var routes = [
    GetPage(name: 'home', page: () => HomePage(), binding: HomePageBinding()),
    GetPage(name: 'splash', page: () => SplashPage(), binding: SplashPageBinding()),

  ];
}