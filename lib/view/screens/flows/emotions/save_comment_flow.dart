import 'package:flutter/material.dart';
import 'package:imunus/infrastructure/locator.dart';
import 'package:imunus/view/controllers/emotions_controller.dart';
import 'package:imunus/view/screens/flows/emotion_flows.dart';
import 'package:imunus/view/shared/colors.dart';
import 'package:imunus/view/states/emotion_provider.dart';
import 'package:provider/provider.dart';

class SaveCommentFlow extends StatefulWidget {
  const SaveCommentFlow({Key? key}) : super(key: key);

  @override
  State<SaveCommentFlow> createState() => _SaveCommentFlowState();
}

class _SaveCommentFlowState extends State<SaveCommentFlow> {
  late bool _sendReport;

  EmotionsProvider? _emotionsProvider;
  final _commentController = TextEditingController();
  final _controller = locator<EmotionsController>();

  @override
  void initState() {
    super.initState();
    _sendReport = false;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _emotionsProvider = Provider.of<EmotionsProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          _title(),
          _inputField(),
          _saveButton(),
        ],
      ),
    );
  }

  _title() => const Padding(
        padding: EdgeInsets.only(top: 16.0, bottom: 40),
        child: Text(
          "Quer nos contar mais sobre isso?",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      );

  _inputField() => TextField(
        controller: _commentController,
        minLines: 10,
        maxLines: null,
        keyboardType: TextInputType.multiline,
        decoration: const InputDecoration(
            hintText: "Insira um comentário aqui caso queira falar um pouco...",
            hintMaxLines: 4,
            border: OutlineInputBorder()),
      );

  _saveButton() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: _sendReport
            ? const Center(child: CircularProgressIndicator())
            : TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColors.blue500),
                ),
                onPressed: _emotionsProvider!.hasSelectedEmotion != true
                    ? null
                    : () async {
                        _emotionsProvider!.setComment(_commentController.text);

                        setState(() {
                          _sendReport = true;
                        });

                        await _controller.postReport(context);

                        _emotionsProvider!
                            .setEmotionFlow(EmotionFlow.listEmotions);
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
                )),
      );
}
