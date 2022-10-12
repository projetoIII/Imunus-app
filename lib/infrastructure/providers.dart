import 'package:imunus/view/states/date_filter_provider.dart';
import 'package:imunus/view/states/emotion_provider.dart';
import 'package:imunus/view/states/patient_provider.dart';
import 'package:imunus/view/states/rating_provider.dart';
import 'package:imunus/view/states/symptoms_provider.dart';
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

    // Date Filter Provider
    providers.add(ChangeNotifierProvider<DateFilterProvider>(
      create: (_) => DateFilterProvider(),
    ));

    // Symptoms Provider
    providers.add(ChangeNotifierProvider<SymptomsProvider>(
      create: (_) => SymptomsProvider(),
    ));

    // Rating Provider
    providers.add(ChangeNotifierProvider<RatingProvider>(
      create: (_) => RatingProvider(),
    ));

    return providers;
  }
}
