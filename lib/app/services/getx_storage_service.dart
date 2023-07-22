import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GetxStorage extends GetxService {
  static GetxStorage get to => Get.find();
  late final GetStorage _storage;

  Future<GetxStorage> init() async {
    await GetStorage().initStorage;
    // await GetStorage.init();

    return this;
  }

  Future<bool> setString(String key, String value) async {
    return await _prefs.setString(key, value);
  }
}
