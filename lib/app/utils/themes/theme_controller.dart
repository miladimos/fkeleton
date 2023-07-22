import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  final _box = GetStorage();
  final _key = 'isDarkMode';

  ThemeMode get theme => _loadTheme() ? ThemeMode.dark : ThemeMode.light;

  bool _loadTheme() => _box.read(_key) ?? false;

  void saveTheme(bool isDarkMode) => _box.write(_key, isDarkMode);

  void changeTheme(ThemeData theme) => Get.changeTheme(theme);

  void changeThemeMode(ThemeMode themeMode) => Get.changeThemeMode(themeMode);

  void toggleTheme() {}
}

// Get.changeTheme(Get.isDarkMode? ThemeData.light(): ThemeData.dark());

// if (Get.isDarkMode) {
//   themeController.changeThemeMode(ThemeMOde.light);
//   themeConttoller.saveTheme(false);
// } else {
// themeController.changeThemeMode(ThemeMOde.dark);
// themeConttoller.saveTheme(true);
// }

// class ThemeController extends GetxController {
//   static ThemeController get to => Get.find();

//   SharedPreferences prefs;
//   ThemeMode _themeMode;
//   ThemeMode get themeMode => _themeMode;

//   Future<void> setThemeMode(ThemeMode themeMode) async {
//     Get.changeThemeMode(themeMode);
//     _themeMode = themeMode;
//     update();
//     prefs = await SharedPreferences.getInstance();
//     await prefs.setString('theme', themeMode.toString().split('.')[1]);
//   }

//   getThemeModeFromPreferences() async {
//     ThemeMode themeMode;
//     prefs = await SharedPreferences.getInstance();
//     String themeText = prefs.getString('theme') ?? 'system';
//     try {
//       themeMode =
//           ThemeMode.values.firstWhere((e) => describeEnum(e) == themeText);
//     } catch (e) {
//       themeMode = ThemeMode.system;
//     }
//     setThemeMode(themeMode);
//   }
// }
