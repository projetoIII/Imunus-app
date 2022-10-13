import 'package:get_it/get_it.dart';
import 'package:imunus/services/emotion_service.dart';
import 'package:imunus/services/login_service.dart';
import 'package:imunus/services/symptom_service.dart';
import 'package:imunus/view/controllers/emotions_controller.dart';
import 'package:imunus/view/controllers/login_controller.dart';
import 'package:imunus/view/controllers/report_controller.dart';
import 'package:imunus/view/controllers/symptom_controller.dart';

final locator = GetIt.instance;

setupLocator() {
  // Services
  locator.registerLazySingleton(() => LoginService());
  locator.registerLazySingleton(() => EmotionService());
  locator.registerLazySingleton(() => SymptomService());

  // Controllers
  locator.registerLazySingleton(() => LoginController());
  locator.registerLazySingleton(() => EmotionsController());
  locator.registerLazySingleton(() => SymptomController());
  locator.registerLazySingleton(() => ReportController());
}
