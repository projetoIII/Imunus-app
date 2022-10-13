import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:imunus/infrastructure/locator.dart';
import 'package:imunus/infrastructure/providers.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:imunus/view/shared/navigation.dart';
import 'package:month_year_picker/month_year_picker.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupLocator();

  var firebaseApp = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // FirebaseApp secondaryApp = Firebase.app('SecondaryApp');

  FirebaseFirestore.instanceFor(app: firebaseApp);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: Providers.build(),
      child: MaterialApp(
        title: 'Imunus',
        routes: routes,
        initialRoute: Path.login,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          MonthYearPickerLocalizations.delegate,
        ],
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
