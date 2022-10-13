import 'package:flutter/material.dart';
import 'package:imunus/view/screens/flows/report_flows.dart';
import 'package:imunus/view/screens/flows/reports/select_month_flow.dart';
import 'package:imunus/view/screens/flows/reports/show_month_report_flow.dart';
import 'package:imunus/view/shared/colors.dart';
import 'package:imunus/view/shared/navigation.dart';
import 'package:imunus/view/states/report_provider.dart';
import 'package:provider/provider.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  ReportProvider? _provider;

  @override
  void dispose() {
    _provider!.setFlow(ReportFlows.selectMonth, notify: false);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _provider ??= Provider.of<ReportProvider>(context);

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
        title: Text(
          "Minha caminhada".toUpperCase(),
          style: const TextStyle(
              color: AppColors.blue, fontWeight: FontWeight.bold),
        ),
        leading: BackButton(
          color: AppColors.blue,
          onPressed: () {
            Navigation.back(context);
          },
        ),
      );

  _body() {
    switch (_provider!.flow) {
      case ReportFlows.selectMonth:
        return const SelectMonthFlow();
      case ReportFlows.showMonthReport:
        return const MonthReportFlow();
      default:
        return Container();
    }
  }
}
