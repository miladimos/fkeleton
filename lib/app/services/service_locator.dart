import 'package:fkeleton/app/services/navigator_service.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

void setupIoCContainer() {
  serviceLocator
      .registerLazySingleton<NavigatorService>(() => NavigatorService());
}
