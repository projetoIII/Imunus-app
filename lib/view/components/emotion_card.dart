import 'package:flutter/material.dart';
import 'package:imunus/core/enums/emotion_type.dart';
import 'package:imunus/view/shared/colors.dart';
import 'package:imunus/view/states/emotion_provider.dart';
import 'package:provider/provider.dart';

class EmotionCard extends StatefulWidget {
  final String iconPath;
  final String title;
  final Color? color;
  final EmotionType emotionType;

  const EmotionCard(
      {Key? key,
      required this.iconPath,
      required this.title,
      required this.emotionType,
      this.color})
      : super(key: key);

  @override
  State<EmotionCard> createState() => _EmotionCardState();
}

class _EmotionCardState extends State<EmotionCard> {
  EmotionsProvider? _emotionsProvider;
  bool? _isSelected;

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
    _isSelected = _emotionsProvider!.getEmotionState(widget.emotionType);

    return Opacity(
      opacity: _isSelected == true ? 0.6 : 1,
      child: Card(
        color: widget.color ?? AppColors.primaryOrange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.0),
        ),
        child: InkWell(
          onTap: () => _isSelected == true ? null : _onTap(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(widget.iconPath),
              const SizedBox(height: 10),
              Text(widget.title.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ),
      ),
    );
  }

  _onTap() {
    _emotionsProvider!.setEmotion(widget.emotionType);
  }
}
