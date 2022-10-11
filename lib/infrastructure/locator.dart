import 'package:get_it/get_it.dart';
import 'package:imunus/services/emotion_service.dart';
import 'package:imunus/services/login_service.dart';
import 'package:imunus/view/controllers/emotions_controller.dart';
import 'package:imunus/view/controllers/login_controller.dart';

final locator = GetIt.instance;

setupLocator() {
  // Services
  locator.registerLazySingleton(() => LoginService());
  locator.registerLazySingleton(() => EmotionService());

  // Controllers
  locator.registerLazySingleton(() => LoginController());
  locator.registerLazySingleton(() => EmotionsController());
}
