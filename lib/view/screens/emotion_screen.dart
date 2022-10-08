import 'package:flutter/material.dart';
import 'package:imunus/core/enums/emotion_type.dart';
import 'package:imunus/view/components/datetime_picker.dart';
import 'package:imunus/view/components/emotion_card.dart';
import 'package:imunus/view/screens/flows/emotion_flows.dart';
import 'package:imunus/view/screens/flows/emotions/select_emotions_flow.dart';
import 'package:imunus/view/shared/colors.dart';
import 'package:imunus/view/states/emotion_provider.dart';
import 'package:provider/provider.dart';

class EmotionScreen extends StatefulWidget {
  const EmotionScreen({Key? key}) : super(key: key);

  @override
  State<EmotionScreen> createState() => _EmotionScreenState();
}

class _EmotionScreenState extends State<EmotionScreen> {
  EmotionsProvider? _emotionsProvider;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _emotionsProvider = Provider.of<EmotionsProvider>(context);

    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: _body(),
      ),
    );
  }

  _appBar() => AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const BackButton(color: AppColors.blue),
        actions: const [DateTimePicker()],
      );

  _body() {
    switch (_emotionsProvider!.flow) {
      case EmotionFlow.selectEmotions:
        return const SelectEmotionsFlow();
      case EmotionFlow.saveComment:
      case EmotionFlow.listEmotions:
      default:
        return Container();
    }
  }
}
