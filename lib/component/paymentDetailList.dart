import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/component/paymentListTile.dart';
import 'package:responsive_dashboard/config/size_config.dart';
import 'package:responsive_dashboard/data.dart';
import 'package:responsive_dashboard/loading.dart';
import 'package:responsive_dashboard/style/colors.dart';
import 'package:responsive_dashboard/style/style.dart';
import 'package:countup/countup.dart';
import 'package:intl/intl.dart';

class PaymentDetailList extends StatefulWidget {
  PaymentDetailList({
    Key key,
  }) : super(key: key);

  static double displayObjectivePercent;

  static List Perspective = [];
  static List UniquePerpective = [];

  static List fObjective = [];
  static List fUniqueObjectives = [];

  static List unsetObjectives = [];
  static List<double> objectiveSum = [];

  static List cObjective = [];
  static List cUniqueObjectives = [];

  static List iObjective = [];
  static List iUniqueObjectives = [];

  static List lObjective = [];
  static List lUniqueObjectives = [];

  static List Objective = [];
  static List UniqueObjectives = [];
  static var splitted;
  static var wc = 0;
  static var displayWord;
  static const colorizeColors = [
    Color.fromRGBO(44, 170, 226, 1),
    Colors.orange,
    Colors.black,
    Colors.white
  ];

  static const colorizeTextStyle = TextStyle(
    fontSize: 30.0,
    fontFamily: 'Poppins',
  );

  @override
  State<PaymentDetailList> createState() => _PaymentDetailListState();
}

class _PaymentDetailListState extends State<PaymentDetailList> {
  double funcobjectiveSum(String Objectivename) {
    double objectiveSum = 0;
    double objectiveWieght = 0;
    for (int i = 0; i < ApiLoading.data.length; i++) {
      if (ApiLoading.data[i]["objective"] == Objectivename) {
        objectiveSum += ApiLoading.data[i]["aggregate"];
        objectiveWieght = ApiLoading.data[i]["objective_weight"] * 100;
      }
    }
    return objectiveSum * 100 / objectiveWieght;
  }

  Widget getObjectives(i) {
    // double objectiveKpiSum() {
    //   double kpiSum = 0;
    //   for (int x = 0; x < PaymentDetailList.unsetObjectives.length; x++) {
    //     for (int y = 0; y < ApiLoading.data.length; y++) {
    //       if (ApiLoading.data[y]['objective'] ==
    //           PaymentDetailList.unsetObjectives[x]) {
    //         kpiSum += num.parse((ApiLoading.data[y]["aggregate"] *
    //                 100 /
    //                 ApiLoading.data[y]["kpi_weight"])
    //             .toStringAsFixed(2));
    //       }
    //     }
    //     break;
    //   }
    //   return kpiSum;
    // }

    if (PaymentDetailList.UniquePerpective[i] == "Internal Business Process") {
      PaymentDetailList.unsetObjectives = PaymentDetailList.iUniqueObjectives;

      // for (int j = 0; j < PaymentDetailList.unsetObjectives.length; j++) {
      //   for (int i = 0; i < ApiLoading.data.length; i++) {
      //     if (ApiLoading.data[i]["objective"] ==
      //         PaymentDetailList.unsetObjectives[j]) {
      //       PaymentDetailList.objectiveSum[j] +=
      //           ApiLoading.data[i]["aggregate"];
      //     }
      //   }
      // }

    } else if (PaymentDetailList.UniquePerpective[i] == "Financial") {
      PaymentDetailList.unsetObjectives = PaymentDetailList.fUniqueObjectives;
    } else if (PaymentDetailList.UniquePerpective[i] == "Customer") {
      PaymentDetailList.unsetObjectives = PaymentDetailList.cUniqueObjectives;
    } else if (PaymentDetailList.UniquePerpective[i] == "Learning and Growth") {
      PaymentDetailList.unsetObjectives = PaymentDetailList.lUniqueObjectives;
    }
    String ObjectiveColorCode(String value) {
      if (funcobjectiveSum(value) < 50) {
        return "assets/deepred.png";
      } else if (funcobjectiveSum(value) >= 50 &&
          funcobjectiveSum(value) < 75) {
        return "assets/lightred.png";
      } else if (funcobjectiveSum(value) >= 75 &&
          funcobjectiveSum(value) < 100) {
        return "assets/amber.png";
      } else if (funcobjectiveSum(value) >= 100 &&
          funcobjectiveSum(value) < 120) {
        return "assets/green.png";
      } else if (funcobjectiveSum(value) >= 120) {
        return "assets/cyan.png";
      } else {
        return "assets/loadingcolor.jpg";
      }
    }

    int s = 0;

    PaymentDetailList.splitted =
        PaymentDetailList.unsetObjectives[s].split(' ');

    var now = new DateTime.now();
    var formatter = new DateFormat('yyyy-MM-dd');
    String formattedDate = formatter.format(now);
    return Column(
      children: [
        for (; s < PaymentDetailList.unsetObjectives.length; s++)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Divider(),
              Align(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 250.0,
                    child: AnimatedTextKit(
                      totalRepeatCount: 1000000,
                      animatedTexts: [
                        for (int y = 0;
                            y < PaymentDetailList.splitted.length;
                            y++)
                          animateText(y, s),
                      ],
                      isRepeatingAnimation: true,
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),
                  Center(
                    child: Image.asset(
                        ObjectiveColorCode(
                            PaymentDetailList.unsetObjectives[s].toString()),
                        width: 35),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Countup(
                    begin: 0,
                    end: funcobjectiveSum(
                        PaymentDetailList.unsetObjectives[s].toString()),
                    duration: Duration(seconds: 8),
                    separator: ',',
                    style: TextStyle(fontSize: 28, fontFamily: "Poppins"),
                  ),
                  Text(
                    " %",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 28),
                  ),
                ],
              ),
              PrimaryText(
                text: formattedDate.toString(),
                size: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.secondary,
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 2,
              ),
              // Column(
              //   children: List.generate(
              //     recentActivities.length,
              //     (index) => PaymentListTile(
              //         icon: recentActivities[index]["icon"],
              //         label: recentActivities[index]["label"],
              //         amount: recentActivities[index]["amount"]),
              //   ),
              // ),
              for (int x = 0; x < ApiLoading.data.length; x++) getKPI(s, x),
            ],
          ),
        SizedBox(
          height: SizeConfig.blockSizeVertical * 5,
        ),
      ],
    );
  }

//colorized objective
  ColorizeAnimatedText animateText(x, s) {
    PaymentDetailList.splitted =
        PaymentDetailList.unsetObjectives[s].split(' ');
    PaymentDetailList.displayWord = PaymentDetailList.splitted[x].toString();
    print(PaymentDetailList.splitted);
    return ColorizeAnimatedText(
      PaymentDetailList.displayWord.toString(),
      textStyle: PaymentDetailList.colorizeTextStyle,
      colors: PaymentDetailList.colorizeColors,
    );
  }

  Widget getKPI(i, x) {
    if (ApiLoading.data[x]['objective'] ==
        PaymentDetailList.unsetObjectives[i]) {
      //PaymentDetailList.AggregateSum += ApiLoading.data[x]["aggregate"];
      // PaymentDetailList.ObjectivePercent =
      //     PaymentDetailList.AggregateSum * 100 / 3;

      String DisplayTarget(String Unit) {
        if (Unit == "Percentage") {
          return "Target: " +
              num.parse((ApiLoading.data[x]["kpi_target"] * 100)
                      .toStringAsFixed(2))
                  .toString() +
              " %";
        } else if (Unit == "USD") {
          return "Target: " +
              num.parse((ApiLoading.data[x]["kpi_target"]).toStringAsFixed(2))
                  .toString() +
              " USD";
        } else if (Unit == "ETB") {
          return "Target: " +
              num.parse((ApiLoading.data[x]["kpi_target"]).toStringAsFixed(2))
                  .toString() +
              " ETB";
        } else {
          return "Target: " +
              num.parse((ApiLoading.data[x]["kpi_target"]).toStringAsFixed(2))
                  .toString();
        }
      }

      String DisplayActual(String Unit) {
        if (Unit == "Percentage") {
          return "Actual: " +
              num.parse((ApiLoading.data[x]["actual_aggregate"] * 100)
                      .toStringAsFixed(2))
                  .toString() +
              " %";
        } else if (Unit == "USD") {
          return "Actual: " +
              num.parse((ApiLoading.data[x]["actual_aggregate"])
                      .toStringAsFixed(2))
                  .toString() +
              " USD";
        } else if (Unit == "ETB") {
          return "Actual: " +
              num.parse((ApiLoading.data[x]["actual_aggregate"])
                      .toStringAsFixed(2))
                  .toString() +
              " ETB";
        } else {
          return "Actual: " +
              num.parse((ApiLoading.data[x]["actual_aggregate"])
                      .toStringAsFixed(2))
                  .toString();
        }
      }

      double multiplier = ApiLoading.data[x]["kpi_weight"] * 100;
      String DisplayAchievement(String Unit) {
        if (Unit == "Percentage") {
          return "Achievement: " +
              num.parse((ApiLoading.data[x]["aggregate"] * 100 / multiplier)
                      .toStringAsFixed(2))
                  .toString() +
              " %";
        } else if (Unit == "USD") {
          return "Achievement: " +
              num.parse((ApiLoading.data[x]["actual_aggregate"] *
                          100 /
                          ApiLoading.data[x]["kpi_target"])
                      .toStringAsFixed(2))
                  .toString() +
              " %";
        } else if (Unit == "ETB") {
          return "Achievement: " +
              num.parse((ApiLoading.data[x]["actual_aggregate"] *
                          100 /
                          ApiLoading.data[x]["kpi_target"])
                      .toStringAsFixed(2))
                  .toString() +
              " %";
        } else {
          return "Achievement: " +
              num.parse((ApiLoading.data[x]["actual_aggregate"] *
                          100 /
                          ApiLoading.data[x]["kpi_target"])
                      .toStringAsFixed(2))
                  .toString() +
              " %";
        }
      }

      String DisplayKpiColor(String Unit) {
        if (Unit == "Percentage") {
          if (num.parse((ApiLoading.data[x]["aggregate"] * 100 / multiplier)
                  .toStringAsFixed(2)) <
              50) {
            return "assets/deepred.png";
          } else if (num.parse(
                      (ApiLoading.data[x]["aggregate"] * 100 / multiplier)
                          .toStringAsFixed(2)) >=
                  50 &&
              num.parse((ApiLoading.data[x]["aggregate"] * 100 / multiplier)
                      .toStringAsFixed(2)) <
                  75) {
            return "assets/lightred.png";
          } else if (num.parse(
                      (ApiLoading.data[x]["aggregate"] * 100 / multiplier)
                          .toStringAsFixed(2)) >
                  75 &&
              num.parse((ApiLoading.data[x]["aggregate"] * 100 / multiplier)
                      .toStringAsFixed(2)) <
                  100) {
            return "assets/amber.png";
          } else if (num.parse(
                      (ApiLoading.data[x]["aggregate"] * 100 / multiplier)
                          .toStringAsFixed(2)) >=
                  100 &&
              num.parse((ApiLoading.data[x]["aggregate"] * 100 / multiplier)
                      .toStringAsFixed(2)) <
                  120) {
            return "assets/green.png";
          } else if (num.parse(
                  (ApiLoading.data[x]["aggregate"] * 100 / multiplier)
                      .toStringAsFixed(2)) >=
              120) {
            return "assets/cyan.png";
          } else {
            return "assets/loadingcolor.jpg";
          }
        } else if (Unit == "USD") {
          if (num.parse((ApiLoading.data[x]["actual_aggregate"] *
                      100 /
                      ApiLoading.data[x]["kpi_target"])
                  .toStringAsFixed(2)) <
              50) {
            return "assets/deepred.png";
          } else if (num.parse((ApiLoading.data[x]["actual_aggregate"] *
                          100 /
                          ApiLoading.data[x]["kpi_target"])
                      .toStringAsFixed(2)) >=
                  50 &&
              num.parse((ApiLoading.data[x]["actual_aggregate"] *
                          100 /
                          ApiLoading.data[x]["kpi_target"])
                      .toStringAsFixed(2)) <
                  75) {
            return "assets/lightred.png";
          } else if (num.parse((ApiLoading.data[x]["actual_aggregate"] *
                          100 /
                          ApiLoading.data[x]["kpi_target"])
                      .toStringAsFixed(2)) >
                  75 &&
              num.parse((ApiLoading.data[x]["actual_aggregate"] *
                          100 /
                          ApiLoading.data[x]["kpi_target"])
                      .toStringAsFixed(2)) <
                  100) {
            return "assets/amber.png";
          } else if (num.parse((ApiLoading.data[x]["actual_aggregate"] *
                          100 /
                          ApiLoading.data[x]["kpi_target"])
                      .toStringAsFixed(2)) >=
                  100 &&
              num.parse((ApiLoading.data[x]["actual_aggregate"] *
                          100 /
                          ApiLoading.data[x]["kpi_target"])
                      .toStringAsFixed(2)) <
                  120) {
            return "assets/green.png";
          } else if (num.parse((ApiLoading.data[x]["actual_aggregate"] *
                      100 /
                      ApiLoading.data[x]["kpi_target"])
                  .toStringAsFixed(2)) >=
              120) {
            return "assets/cyan.png";
          } else {
            return "assets/loadingcolor.jpg";
          }
        } else if (Unit == "ETB") {
          if (num.parse((ApiLoading.data[x]["actual_aggregate"] *
                      100 /
                      ApiLoading.data[x]["kpi_target"])
                  .toStringAsFixed(2)) <
              50) {
            return "assets/deepred.png";
          } else if (num.parse((ApiLoading.data[x]["actual_aggregate"] *
                          100 /
                          ApiLoading.data[x]["kpi_target"])
                      .toStringAsFixed(2)) >=
                  50 &&
              num.parse((ApiLoading.data[x]["actual_aggregate"] *
                          100 /
                          ApiLoading.data[x]["kpi_target"])
                      .toStringAsFixed(2)) <
                  75) {
            return "assets/lightred.png";
          } else if (num.parse((ApiLoading.data[x]["actual_aggregate"] *
                          100 /
                          ApiLoading.data[x]["kpi_target"])
                      .toStringAsFixed(2)) >
                  75 &&
              num.parse((ApiLoading.data[x]["actual_aggregate"] *
                          100 /
                          ApiLoading.data[x]["kpi_target"])
                      .toStringAsFixed(2)) <
                  100) {
            return "assets/amber.png";
          } else if (num.parse((ApiLoading.data[x]["actual_aggregate"] *
                          100 /
                          ApiLoading.data[x]["kpi_target"])
                      .toStringAsFixed(2)) >=
                  100 &&
              num.parse((ApiLoading.data[x]["actual_aggregate"] *
                          100 /
                          ApiLoading.data[x]["kpi_target"])
                      .toStringAsFixed(2)) <
                  120) {
            return "assets/green.png";
          } else if (num.parse((ApiLoading.data[x]["actual_aggregate"] *
                      100 /
                      ApiLoading.data[x]["kpi_target"])
                  .toStringAsFixed(2)) >=
              120) {
            return "assets/cyan.png";
          } else {
            return "assets/loadingcolor.jpg";
          }
        } else {
          if (num.parse((ApiLoading.data[x]["actual_aggregate"] *
                      100 /
                      ApiLoading.data[x]["kpi_target"])
                  .toStringAsFixed(2)) <
              50) {
            return "assets/deepred.png";
          } else if (num.parse((ApiLoading.data[x]["actual_aggregate"] *
                          100 /
                          ApiLoading.data[x]["kpi_target"])
                      .toStringAsFixed(2)) >=
                  50 &&
              num.parse((ApiLoading.data[x]["actual_aggregate"] *
                          100 /
                          ApiLoading.data[x]["kpi_target"])
                      .toStringAsFixed(2)) <
                  75) {
            return "assets/lightred.png";
          } else if (num.parse((ApiLoading.data[x]["actual_aggregate"] *
                          100 /
                          ApiLoading.data[x]["kpi_target"])
                      .toStringAsFixed(2)) >
                  75 &&
              num.parse((ApiLoading.data[x]["actual_aggregate"] *
                          100 /
                          ApiLoading.data[x]["kpi_target"])
                      .toStringAsFixed(2)) <
                  100) {
            return "assets/amber.png";
          } else if (num.parse((ApiLoading.data[x]["actual_aggregate"] *
                          100 /
                          ApiLoading.data[x]["kpi_target"])
                      .toStringAsFixed(2)) >=
                  100 &&
              num.parse((ApiLoading.data[x]["actual_aggregate"] *
                          100 /
                          ApiLoading.data[x]["kpi_target"])
                      .toStringAsFixed(2)) <
                  120) {
            return "assets/green.png";
          } else if (num.parse((ApiLoading.data[x]["actual_aggregate"] *
                      100 /
                      ApiLoading.data[x]["kpi_target"])
                  .toStringAsFixed(2)) >=
              120) {
            return "assets/cyan.png";
          } else {
            return "assets/loadingcolor.jpg";
          }
        }
      }

      return Column(
        children: [
          Column(
            children: List.generate(
              1,
              (index) => PaymentListTile(
                icon: 'assets/kpi.png', // temporarly same for every kpi
                label: ApiLoading.data[x]['kpi_name'],
                amount: DisplayAchievement(
                    ApiLoading.data[x]['kpi_unit_measurement']),
                target:
                    DisplayTarget(ApiLoading.data[x]['kpi_unit_measurement']),
                actual:
                    DisplayActual(ApiLoading.data[x]['kpi_unit_measurement']),
                colorCode: DisplayKpiColor(ApiLoading.data[x]
                    ['kpi_unit_measurement']), // temporarly same for every kpi
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical * 5,
          ),
        ],
      );
    } else {
      return Column();
    }
  }

  Widget getPerspective() {
    return Column(
      children: [
        for (int i = 0; i < PaymentDetailList.UniquePerpective.length; i++)
          Column(
            children: [
              PrimaryText(
                  text: PaymentDetailList.UniquePerpective[i].toString(),
                  size: 32,
                  fontWeight: FontWeight.w800),
              getObjectives(i),
            ],
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < ApiLoading.data.length; i++) {
      PaymentDetailList.Perspective.add(ApiLoading.data[i]["perspective"]);
      // if (ApiLoading.data[i]["perspective"] == "Financial") ;
    }
    var seen = Set<String>();
    PaymentDetailList.UniquePerpective =
        PaymentDetailList.Perspective.where((x) => seen.add(x)).toList();

    for (int i = 0; i < ApiLoading.data.length; i++) {
      if (ApiLoading.data[i]["perspective"] == "Financial") {
        PaymentDetailList.fObjective.add(ApiLoading.data[i]["objective"]);
      } else if (ApiLoading.data[i]["perspective"] ==
          "Internal Business Process") {
        PaymentDetailList.iObjective.add(ApiLoading.data[i]["objective"]);
      } else if (ApiLoading.data[i]["perspective"] == "Customer") {
        PaymentDetailList.cObjective.add(ApiLoading.data[i]["objective"]);
      } else if (ApiLoading.data[i]["perspective"] == "Learning and Growth") {
        PaymentDetailList.lObjective.add(ApiLoading.data[i]["objective"]);
      }
    }

    var seen2 = Set<String>();
    PaymentDetailList.fUniqueObjectives =
        PaymentDetailList.fObjective.where((x) => seen2.add(x)).toList();

    var seen3 = Set<String>();
    PaymentDetailList.iUniqueObjectives =
        PaymentDetailList.iObjective.where((x) => seen3.add(x)).toList();

    var seen4 = Set<String>();
    PaymentDetailList.lUniqueObjectives =
        PaymentDetailList.lObjective.where((x) => seen4.add(x)).toList();

    var seen5 = Set<String>();
    PaymentDetailList.cUniqueObjectives =
        PaymentDetailList.cObjective.where((x) => seen5.add(x)).toList();

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
        height: SizeConfig.blockSizeVertical * 5,
      ),
      Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(30), boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.000005),
            blurRadius: 15.0,
            offset: const Offset(
              10.0,
              15.0,
            ),
          )
        ]),
        child: Image.asset('assets/logo.png'),
      ),
      SizedBox(
        height: SizeConfig.blockSizeVertical * 5,
      ),
      getPerspective(),
    ]);
  }
}
