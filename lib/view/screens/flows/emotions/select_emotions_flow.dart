import 'package:flutter/material.dart';
import 'package:imunus/core/enums/emotion_type.dart';
import 'package:imunus/view/components/emotion_card.dart';
import 'package:imunus/view/screens/flows/emotion_flows.dart';
import 'package:imunus/view/shared/colors.dart';
import 'package:imunus/view/states/emotion_provider.dart';
import 'package:provider/provider.dart';

class SelectEmotionsFlow extends StatefulWidget {
  const SelectEmotionsFlow({Key? key}) : super(key: key);

  @override
  State<SelectEmotionsFlow> createState() => _SelectEmotionsFlowState();
}

class _SelectEmotionsFlowState extends State<SelectEmotionsFlow> {
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

    return Column(
      children: [
        _title(),
        _cards(),
        _saveButton(),
        if (_emotionsProvider!.hasSelectedEmotion == true) _cleanSelection(),
      ],
    );
  }

  _title() => const Padding(
        padding: EdgeInsets.only(top: 16.0),
        child: Text(
          "Como você está se sentindo hoje?",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      );

  _cards() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: GridView.count(
          shrinkWrap: true,
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          children: const [
            EmotionCard(
              title: "Feliz",
              iconPath: "assets/feelings/faces/icons8-happy-100 1.png",
              emotionType: EmotionType.happy,
              color: AppColors.yellow,
            ),
            EmotionCard(
              title: "Triste",
              iconPath: "assets/feelings/faces/icons8-sad-100 1.png",
              emotionType: EmotionType.sad,
              color: AppColors.blue500,
            ),
            EmotionCard(
              title: "Confiante",
              iconPath: "assets/feelings/faces/icons8-confident-96 1.png",
              emotionType: EmotionType.confident,
              color: AppColors.helperOrange,
            ),
            EmotionCard(
              title: "Sensível",
              iconPath: "assets/feelings/faces/icons8-crying-64 1.png",
              emotionType: EmotionType.sensible,
              color: AppColors.red300,
            ),
            EmotionCard(
              title: "Distraído",
              iconPath: "assets/feelings/faces/icons8-thinking-64 1.png",
              emotionType: EmotionType.distracted,
              color: AppColors.purple,
            ),
            EmotionCard(
              title: "Focado",
              iconPath:
                  "assets/feelings/faces/icons8-leaning-against-wall-100 1.png",
              emotionType: EmotionType.focused,
              color: AppColors.pink,
            ),
            EmotionCard(
              title: "Tranquilo",
              iconPath: "assets/feelings/faces/icons8-relax-100 1.png",
              emotionType: EmotionType.relaxed,
              color: AppColors.green,
            ),
            EmotionCard(
              title: "Disposto",
              iconPath: "assets/feelings/faces/icons8-battle-ropes-100 1.png",
              emotionType: EmotionType.active,
              color: AppColors.yellow600,
            ),
            EmotionCard(
              title: "Desanimado",
              iconPath: "assets/feelings/faces/icons8-disappointed-100 1.png",
              emotionType: EmotionType.down,
              color: AppColors.gray300,
            ),
            EmotionCard(
              title: "Sociável",
              iconPath: "assets/feelings/faces/icons8-friends-100 1.png",
              emotionType: EmotionType.sociable,
              color: AppColors.pink600,
            ),
            EmotionCard(
              title: "Tenso",
              iconPath:
                  "assets/feelings/faces/icons8-grimacing-nervous-emoji-face-shared-on-internet-96 1.png",
              emotionType: EmotionType.keyedUp,
              color: AppColors.blue200,
            ),
            EmotionCard(
              title: "Nervoso",
              iconPath: "assets/feelings/faces/icons8-sad-58 1.png",
              emotionType: EmotionType.nervous,
              color: AppColors.red600,
            ),
          ],
        ),
      );

  _saveButton() => TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
            _emotionsProvider!.hasSelectedEmotion != true
                ? Colors.grey.shade300
                : AppColors.blue500),
      ),
      onPressed: _emotionsProvider!.hasSelectedEmotion != true
          ? null
          : () {
              _emotionsProvider!.setEmotionFlow(EmotionFlow.saveComment);
            },
      child: SizedBox(
        width: 200,
        height: 28,
        child: Center(
          child: Text(
            "Salvar".toUpperCase(),
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ));

  _cleanSelection() => Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 24),
        child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.grey.shade300),
            ),
            onPressed: () => _emotionsProvider!.cleanState(notify: true),
            child: SizedBox(
              width: 200,
              height: 28,
              child: Center(
                child: Text(
                  "Limpar".toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 18),
                ),
              ),
            )),
      );
}
