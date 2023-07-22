import 'package:get/get.dart';

class HiveService extends GetxService {
  Future<HiveService> init() async {
    await Hive.initFlutter();
    return this;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
