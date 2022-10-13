import 'package:flutter/material.dart';
import 'package:imunus/view/components/home_card.dart';
import 'package:imunus/view/components/logout.dart';
import 'package:imunus/view/shared/colors.dart';
import 'package:imunus/view/shared/navigation.dart';
import 'package:imunus/view/shared/utils.dart';
import 'package:imunus/view/states/patient_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PatientProvider? _provider;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _provider = Provider.of<PatientProvider>(context);

    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _title(),
          _cards(),
        ],
      )),
    );
  }

  _appBar() => AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Logout(),
        ],
        title: RichText(
            text: TextSpan(
                text: "Olá, ".toUpperCase(),
                style: const TextStyle(color: AppColors.gray, fontSize: 20),
                children: [
              TextSpan(
                  text: "${_handleUsername()}!".toUpperCase(),
                  style: const TextStyle(color: AppColors.primaryOrange)),
            ])),
      );

  _title() => Padding(
      padding: const EdgeInsets.only(left: 20, top: 40),
      child: Text("Menu".toUpperCase(),
          style: const TextStyle(
              color: AppColors.blue,
              fontSize: 18,
              fontWeight: FontWeight.w600)));

  _cards() => GridView.count(
        shrinkWrap: true,
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: const [
          HomeCard(
            imagePath: "assets/home/sammy-speech-bubble-dialog-cloud 1.png",
            title: "REGISTRE COMO SE SENTE!",
            navigateTo: Path.emotions,
          ),
          HomeCard(
            imagePath: "assets/home/Group 111.png",
            title: "REGISTRE sintomas ",
            navigateTo: Path.symptoms,
          ),
          HomeCard(
            imagePath: "assets/home/sammy-pill (1) 2.png",
            title: "REGISTRE seus medicamentos",
          ),
          HomeCard(
            imagePath: "assets/home/sammy-note-with-button 1.png",
            title: "REGISTRE suas consultas",
          ),
          HomeCard(
            imagePath: "assets/home/Group 184.png",
            title: "consulte e tire dúvidas no faq",
          ),
          HomeCard(
            imagePath: "assets/home/sammy-speech-bubble-text 1.png",
            title: "comunidade DE APOIO",
          ),
          HomeCard(
            imagePath: "assets/home/sammy-board-with-graphs 1.png",
            title: "minha caminhada",
            navigateTo: Path.report,
          ),
          HomeCard(
            imagePath: "assets/home/Group 113.png",
            title: "diário",
          ),
        ],
      );

  _handleUsername() {
    var username = "";

    if (_provider!.username != null) {
      username = Utils.getUserFirstName(_provider!.username!);
    }

    return username;
  }
}
