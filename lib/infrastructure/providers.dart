import 'package:imunus/view/states/patient_provider.dart';
import 'package:provider/provider.dart';

class Providers {
  static List<ChangeNotifierProvider> build() {
    List<ChangeNotifierProvider> providers = [];

    // FormViewState Provider
    providers.add(ChangeNotifierProvider<PatientProvider>(
      create: (_) => PatientProvider(),
    ));

    return providers;
  }
}
