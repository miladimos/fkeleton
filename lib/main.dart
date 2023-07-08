import 'package:fkeleton/app/services/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:fkeleton/app/application.dart';
import 'package:fkeleton/app/utils/global_error_handler.dart';

void main() async {
  setupIoCContainer();

  await GetStorage.init();

  GlobalErrorHandler(child: const Application());
}


// Future<void> initGetxServices() async{
//   debugPrint("starting services ...");
//   // await Get.putAsync(() => Service().init());
//  print('All services started...');
// }
