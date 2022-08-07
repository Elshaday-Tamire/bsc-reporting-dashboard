import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:responsive_dashboard/config/responsive.dart';
import 'package:responsive_dashboard/style/colors.dart';

import '../dashboard.dart';
import '../loading.dart';

class BarChartCopmponent4 extends StatefulWidget {
  const BarChartCopmponent4({
    Key key,
  }) : super(key: key);
  @override
  State<BarChartCopmponent4> createState() => _BarChartCopmponent4State();
}

class _BarChartCopmponent4State extends State<BarChartCopmponent4> {
  Color total = Colors.black;

  @override
  Widget build(BuildContext context) {
    if (Dashboard.learningtotalscore * 100 / Dashboard.learningWaight < 50) {
      setState(() {
        total = Color.fromRGBO(192, 0, 0, 1);
      });
    } else if (Dashboard.learningtotalscore * 100 / Dashboard.learningWaight >=
            50 &&
        Dashboard.learningtotalscore * 100 / Dashboard.learningWaight < 75) {
      setState(() {
        total = Color.fromRGBO(254, 0, 0, 1);
      });
    } else if (Dashboard.learningtotalscore * 100 / Dashboard.learningWaight >=
            75 &&
        Dashboard.learningtotalscore * 100 / Dashboard.learningWaight < 100) {
      setState(() {
        total = Color.fromRGBO(230, 126, 34, 1);
      });
    } else if (Dashboard.learningtotalscore * 100 / Dashboard.learningWaight >=
            100 &&
        Dashboard.learningtotalscore * 100 / Dashboard.learningWaight < 120) {
      setState(() {
        total = Color.fromRGBO(0, 175, 80, 1);
      });
    } else if (Dashboard.learningtotalscore * 100 / Dashboard.learningWaight >=
        120) {
      setState(() {
        total = Color.fromRGBO(0, 173, 239, 1);
      });
    }
    return BarChart(
      BarChartData(
          borderData: FlBorderData(show: false),
          alignment: BarChartAlignment.spaceBetween,
          axisTitleData:
              FlAxisTitleData(leftTitle: AxisTitle(reservedSize: 20)),
          gridData: FlGridData(
              drawHorizontalLine: true,
              horizontalInterval: Dashboard.learningWaight),
          titlesData: FlTitlesData(
              leftTitles: SideTitles(
                reservedSize: 30,
                getTextStyles: (value) =>
                    const TextStyle(color: Colors.grey, fontSize: 12),
                showTitles: true,
                getTitles: (value) {
                  if (value == 0) {
                    return '0';
                  } else if (value == 40) {
                    return '40 %';
                  } else if (value == 80) {
                    return '80 %';
                  } else if (value == 120) {
                    return '120 %';
                  } else {
                    return '';
                  }
                },
              ),
              bottomTitles: SideTitles(
                showTitles: true,
                getTextStyles: (value) =>
                    const TextStyle(color: Colors.grey, fontSize: 12),
                getTitles: (value) {
                  if (value == 0) {
                    return 'JAN';
                  } else if (value == 1) {
                    return 'FEB';
                  } else if (value == 2) {
                    return 'MAR';
                  } else if (value == 3) {
                    return 'APR';
                  } else if (value == 4) {
                    return 'MAY';
                  } else if (value == 5) {
                    return 'JUN';
                  } else if (value == 6) {
                    return 'JUL';
                  } else if (value == 7) {
                    return 'AUG';
                  } else if (value == 8) {
                    return 'SEP';
                  } else if (value == 9) {
                    return 'OCT';
                  } else if (value == 10) {
                    return 'NOV';
                  } else if (value == 11) {
                    return 'DEC';
                  } else if (value == 12) {
                    return 'TOTAL';
                  } else {
                    return '';
                  }
                },
              )),
          barGroups: [
            BarChartGroupData(x: 0, barRods: [
              BarChartRodData(
                  y: num.parse((Dashboard.learningjanscore *
                          100 /
                          Dashboard.learningWaight)
                      .toStringAsFixed(2)),
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 120, show: true, colors: [AppColors.barBg])),
            ]),
            BarChartGroupData(x: 1, barRods: [
              BarChartRodData(
                  y: num.parse((Dashboard.learningfebscore *
                          100 /
                          Dashboard.learningWaight)
                      .toStringAsFixed(2)),
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 120, show: true, colors: [AppColors.barBg]))
            ]),
            BarChartGroupData(x: 2, barRods: [
              BarChartRodData(
                  y: num.parse((Dashboard.learningmarchscore *
                          100 /
                          Dashboard.learningWaight)
                      .toStringAsFixed(2)),
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 120, show: true, colors: [AppColors.barBg]))
            ]),
            BarChartGroupData(x: 3, barRods: [
              BarChartRodData(
                  y: num.parse((Dashboard.learningaprilscore *
                          100 /
                          Dashboard.learningWaight)
                      .toStringAsFixed(2)),
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 120, show: true, colors: [AppColors.barBg]))
            ]),
            BarChartGroupData(x: 4, barRods: [
              BarChartRodData(
                  y: num.parse((Dashboard.learningmayscore *
                          100 /
                          Dashboard.learningWaight)
                      .toStringAsFixed(2)),
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 120, show: true, colors: [AppColors.barBg]))
            ]),
            BarChartGroupData(x: 5, barRods: [
              BarChartRodData(
                  y: num.parse((Dashboard.learningjunescore *
                          100 /
                          Dashboard.learningWaight)
                      .toStringAsFixed(2)),
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 120, show: true, colors: [AppColors.barBg]))
            ]),
            BarChartGroupData(x: 6, barRods: [
              BarChartRodData(
                  y: num.parse((Dashboard.learningjulyscore *
                          100 /
                          Dashboard.learningWaight)
                      .toStringAsFixed(2)),
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 120, show: true, colors: [AppColors.barBg]))
            ]),
            BarChartGroupData(x: 7, barRods: [
              BarChartRodData(
                  y: num.parse((Dashboard.learningaugestscore *
                          100 /
                          Dashboard.learningWaight)
                      .toStringAsFixed(2)),
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 120, show: true, colors: [AppColors.barBg]))
            ]),
            BarChartGroupData(x: 8, barRods: [
              BarChartRodData(
                  y: num.parse(
                          (Dashboard.learningseptscore).toStringAsFixed(2)) *
                      100 /
                      Dashboard.learningWaight,
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 120, show: true, colors: [AppColors.barBg]))
            ]),
            BarChartGroupData(x: 9, barRods: [
              BarChartRodData(
                  y: num.parse((Dashboard.learningoctscore *
                          100 /
                          Dashboard.learningWaight)
                      .toStringAsFixed(2)),
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 120, show: true, colors: [AppColors.barBg]))
            ]),
            BarChartGroupData(x: 10, barRods: [
              BarChartRodData(
                  y: num.parse((Dashboard.learningnovscore *
                          100 /
                          Dashboard.learningWaight)
                      .toStringAsFixed(2)),
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 120, show: true, colors: [AppColors.barBg]))
            ]),
            BarChartGroupData(x: 11, barRods: [
              BarChartRodData(
                  y: num.parse((Dashboard.learningdesscore *
                          100 /
                          Dashboard.learningWaight)
                      .toStringAsFixed(2)),
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 120, show: true, colors: [AppColors.barBg]))
            ]),
            BarChartGroupData(x: 12, barRods: [
              BarChartRodData(
                  y: num.parse((Dashboard.learningtotalscore *
                          100 /
                          Dashboard.learningWaight)
                      .toStringAsFixed(2)),
                  colors: [total],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 120, show: true, colors: [AppColors.barBg]))
            ]),
          ]),
      swapAnimationDuration: Duration(milliseconds: 1120), // Optional
      swapAnimationCurve: Curves.linear, // Optional
    );
  }
}
