import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fkeleton/app/pages/home/ui/home_page.dart';
import 'package:fkeleton/app/pages/home/binding/home_page_binding.dart';
import 'package:fkeleton/app/pages/splash/ui/splash_page.dart';
import 'package:fkeleton/app/pages/splash/binding/splash_page_binding.dart';

abstract class _Paths {
  _Paths._();

  static const String HOME = '/home';
  static const String SPLASH = '/splash';
}

class AppRoutes {
  AppRoutes._();

  static const String initialRoute = _Paths.HOME ;

  static var routes = [
    GetPage(name: _Paths.HOME , page: () => HomePage(), binding: HomePageBinding()),
    GetPage(name: _Paths.SPLASH, page: () => SplashPage(), binding: SplashPageBinding()),
  ];
}
