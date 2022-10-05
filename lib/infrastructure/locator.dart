import 'package:get_it/get_it.dart';
import 'package:imunus/services/login_service.dart';
import 'package:imunus/view/controllers/login_controller.dart';

final locator = GetIt.instance;

setupLocator() {
  // Services
  locator.registerLazySingleton(() => LoginService());

  // Controllers
  locator.registerLazySingleton(() => LoginController());
}
