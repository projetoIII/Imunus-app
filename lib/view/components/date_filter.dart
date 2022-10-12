import 'package:flutter/material.dart';
import 'package:imunus/view/shared/colors.dart';
import 'package:imunus/view/states/date_filter_provider.dart';
import 'package:provider/provider.dart';

class DateFilter extends StatefulWidget {
  final Function? callback;
  const DateFilter({Key? key, this.callback}) : super(key: key);

  @override
  State<DateFilter> createState() => _DateFilterState();
}

class _DateFilterState extends State<DateFilter> {
  DateFilterProvider? _provider;

  @override
  void dispose() {
    _provider!.set(DateTime.now(), notify: false);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _provider ??= Provider.of<DateFilterProvider>(context);

    return IconButton(
      onPressed: () async {
        var dateTimeSelected = await _picker();
        _provider!.set(dateTimeSelected);
      },
      icon: const Icon(
        Icons.calendar_today_rounded,
        color: AppColors.blue,
      ),
    );
  }

  _picker() async => await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.fromMillisecondsSinceEpoch(0),
      lastDate: DateTime.now());
}
