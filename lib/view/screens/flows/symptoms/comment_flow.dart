import 'package:flutter/material.dart';
import 'package:imunus/infrastructure/locator.dart';
import 'package:imunus/view/components/rating.dart';
import 'package:imunus/view/controllers/symptom_controller.dart';
import 'package:imunus/view/screens/flows/symptoms_flow.dart';
import 'package:imunus/view/shared/colors.dart';
import 'package:imunus/view/shared/utils.dart';
import 'package:imunus/view/states/symptoms_provider.dart';
import 'package:provider/provider.dart';

class CommentSymptomFlow extends StatefulWidget {
  const CommentSymptomFlow({Key? key}) : super(key: key);

  @override
  State<CommentSymptomFlow> createState() => _CommentSymptomFlowState();
}

class _CommentSymptomFlowState extends State<CommentSymptomFlow> {
  final _commentController = TextEditingController();
  final _controller = locator<SymptomController>();

  SymptomsProvider? _provider;

  String? _symptomName;
  String? _symptomIcon;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    // _provider!.clear(notify: false);
  }

  @override
  Widget build(BuildContext context) {
    _provider ??= Provider.of<SymptomsProvider>(context);

    if (_provider != null) {
      var assets = Utils.getSymptomAssets(_provider!.symptom!);
      _symptomName ??= assets.title;
      _symptomIcon ??= assets.iconPath;
    }

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _title(),
            _icon(),
            _ratingBar(),
            _wantTellToTellMore(),
            _inputField(),
            _saveButton(),
          ],
        ),
      ),
    );
  }

  _title() => Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Text(
          "Como a ${_symptomName!.toUpperCase()} ocorreu?",
          textAlign: TextAlign.start,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      );

  _icon() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        child: Card(
            color: AppColors.blue,
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(_symptomIcon!))),
      );

  _ratingBar() => Rating();

  _wantTellToTellMore() => const Padding(
        padding: EdgeInsets.symmetric(vertical: 30.0),
        child: Text(
          "Quer nos contar mais sobre isso?",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
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
        child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColors.blue500),
            ),
            onPressed: _provider!.hasSelectedSymptom != true
                ? null
                : () async {
                    _provider!.setComment(_commentController.text);

                    await _controller.post(context);

                    _provider!.setFlow(SymptomsFlow.listSymptoms);
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
