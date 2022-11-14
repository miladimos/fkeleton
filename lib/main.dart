import 'package:fkeleton/app/application.dart';
import 'package:fkeleton/app/utils/global_error_handler.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  GlobalErrorHandler(
    child: Application()
  );
}

