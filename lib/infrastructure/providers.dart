import 'package:imunus/view/states/emotion_provider.dart';
import 'package:imunus/view/states/patient_provider.dart';
import 'package:provider/provider.dart';

class Providers {
  static List<ChangeNotifierProvider> build() {
    List<ChangeNotifierProvider> providers = [];

    // Patient Provider
    providers.add(ChangeNotifierProvider<PatientProvider>(
      create: (_) => PatientProvider(),
    ));

    // Patient Provider
    providers.add(ChangeNotifierProvider<EmotionsProvider>(
      create: (_) => EmotionsProvider(),
    ));

    return providers;
  }
}
