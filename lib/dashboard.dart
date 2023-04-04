import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/component/appBarActionItems.dart';
import 'package:responsive_dashboard/component/barCHart4.dart';
import 'package:responsive_dashboard/component/barChart.dart';
import 'package:responsive_dashboard/component/barChart2.dart';
import 'package:responsive_dashboard/component/barChart3.dart';
import 'package:responsive_dashboard/component/header.dart';
import 'package:responsive_dashboard/component/historyTable.dart';
import 'package:responsive_dashboard/component/historyTable2.dart';
import 'package:responsive_dashboard/component/historyTable3.dart';
import 'package:responsive_dashboard/component/historyTable4.dart';
import 'package:responsive_dashboard/component/infoCard.dart';
import 'package:responsive_dashboard/component/paymentDetailList.dart';
import 'package:responsive_dashboard/component/sideMenu.dart';
import 'package:responsive_dashboard/config/responsive.dart';
import 'package:responsive_dashboard/config/size_config.dart';
import 'package:responsive_dashboard/style/colors.dart';
import 'package:responsive_dashboard/style/style.dart';
import 'package:screenshot/screenshot.dart';
import 'package:image_downloader_web/image_downloader_web.dart';

import 'loading.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();

  static double financialWaight = 0;
  static double customerlWaight = 0;
  static double internalWaight = 0;
  static double learningWaight = 0;

  //financial
  static double financialjanscore = 0;
  static double financialfebscore = 0;
  static double financialmarchscore = 0;
  static double financialaprilscore = 0;
  static double financialmayscore = 0;
  static double financialjunescore = 0;
  static double financialjulyscore = 0;
  static double financialaugestscore = 0;
  static double financialseptscore = 0;
  static double financialoctscore = 0;
  static double financialnovscore = 0;
  static double financialdesscore = 0;
  static double financialtotalscore = 0;

  //customer
  static double customerjanscore = 0;
  static double customerfebscore = 0;
  static double customermarchscore = 0;
  static double customeraprilscore = 0;
  static double customermayscore = 0;
  static double customerjunescore = 0;
  static double customerjulyscore = 0;
  static double customeraugestscore = 0;
  static double customerseptscore = 0;
  static double customeroctscore = 0;
  static double customernovscore = 0;
  static double customerdesscore = 0;
  static double customertotalscore = 0;
  //internal business process
  static double internaljanscore = 0;
  static double internalfebscore = 0;
  static double internalmarchscore = 0;
  static double internalaprilscore = 0;
  static double internalmayscore = 0;
  static double internaljunescore = 0;
  static double internaljulyscore = 0;
  static double internalaugestscore = 0;
  static double internalseptscore = 0;
  static double internaloctscore = 0;
  static double internalnovscore = 0;
  static double internaldesscore = 0;
  static double internaltotalscore = 0;
  //learning and growth
  static double learningjanscore = 0;
  static double learningfebscore = 0;
  static double learningmarchscore = 0;
  static double learningaprilscore = 0;
  static double learningmayscore = 0;
  static double learningjunescore = 0;
  static double learningjulyscore = 0;
  static double learningaugestscore = 0;
  static double learningseptscore = 0;
  static double learningoctscore = 0;
  static double learningnovscore = 0;
  static double learningdesscore = 0;
  static double learningtotalscore = 0;
  static String commited = "assets/commited.png";
}

class _DashboardState extends State<Dashboard> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  String colorcodepathfinancial = "";
  String colorcodepathCustomer = "";
  String colorcodepathInternalBusinessProcess = "";
  String colorcodepathLearningandGrowth = "";
  String colorcodepathTotalScoreCard = "";
  String dropdownValue = 'One';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Dashboard.financialjanscore = 0;
    Dashboard.financialfebscore = 0;
    Dashboard.financialmarchscore = 0;
    Dashboard.financialaprilscore = 0;
    Dashboard.financialmayscore = 0;
    Dashboard.financialjunescore = 0;
    Dashboard.financialjulyscore = 0;
    Dashboard.financialaugestscore = 0;
    Dashboard.financialseptscore = 0;
    Dashboard.financialoctscore = 0;
    Dashboard.financialnovscore = 0;
    Dashboard.financialdesscore = 0;

    Dashboard.customerjanscore = 0;
    Dashboard.customerfebscore = 0;
    Dashboard.customermarchscore = 0;
    Dashboard.customeraprilscore = 0;
    Dashboard.customermayscore = 0;
    Dashboard.customerjunescore = 0;
    Dashboard.customerjulyscore = 0;
    Dashboard.customeraugestscore = 0;
    Dashboard.customerseptscore = 0;
    Dashboard.customeroctscore = 0;
    Dashboard.customernovscore = 0;
    Dashboard.customerdesscore = 0;

    Dashboard.internaljanscore = 0;
    Dashboard.internalfebscore = 0;
    Dashboard.internalmarchscore = 0;
    Dashboard.internalaprilscore = 0;
    Dashboard.internalmayscore = 0;
    Dashboard.internaljunescore = 0;
    Dashboard.internaljulyscore = 0;
    Dashboard.internalaugestscore = 0;
    Dashboard.internalseptscore = 0;
    Dashboard.internaloctscore = 0;
    Dashboard.internalnovscore = 0;
    Dashboard.internaldesscore = 0;

    Dashboard.learningjanscore = 0;
    Dashboard.learningfebscore = 0;
    Dashboard.learningmarchscore = 0;
    Dashboard.learningaprilscore = 0;
    Dashboard.learningmayscore = 0;
    Dashboard.learningjunescore = 0;
    Dashboard.learningjulyscore = 0;
    Dashboard.learningaugestscore = 0;
    Dashboard.learningseptscore = 0;
    Dashboard.learningoctscore = 0;
    Dashboard.learningnovscore = 0;
    Dashboard.learningdesscore = 0;
    for (int i = 0; i < ApiLoading.data.length; i++) {
      if (ApiLoading.data[i]["perspective"] == "Financial") {
        Dashboard.financialWaight =
            ApiLoading.data[i]["perspective_weight"] * 100;
      }
    }
    for (int i = 0; i < ApiLoading.data.length; i++) {
      if (ApiLoading.data[i]["perspective"] == "Customer") {
        Dashboard.customerlWaight =
            ApiLoading.data[i]["perspective_weight"] * 100;
      }
    }
    for (int i = 0; i < ApiLoading.data.length; i++) {
      if (ApiLoading.data[i]["perspective"] == "Internal Business Process") {
        Dashboard.internalWaight =
            ApiLoading.data[i]["perspective_weight"] * 100;
      }
    }
    for (int i = 0; i < ApiLoading.data.length; i++) {
      if (ApiLoading.data[i]["perspective"] == "Learning and Growth") {
        Dashboard.learningWaight =
            ApiLoading.data[i]["perspective_weight"] * 100;
      }
    }
    for (int i = 0; i < ApiLoading.data.length; i++) {
      if (ApiLoading.data[i]["perspective"] == "Financial") {
        Dashboard.financialjanscore += ApiLoading.data[i]["Score_January"];
        Dashboard.financialfebscore += ApiLoading.data[i]["Score_February"];
        Dashboard.financialmarchscore += ApiLoading.data[i]["Score_March"];
        Dashboard.financialaprilscore += ApiLoading.data[i]["Score_April"];
        Dashboard.financialmayscore += ApiLoading.data[i]["Score_May"];
        Dashboard.financialjunescore += ApiLoading.data[i]["Score_June"];
        Dashboard.financialjulyscore += ApiLoading.data[i]["Score_July"];
        Dashboard.financialaugestscore += ApiLoading.data[i]["Score_August"];
        Dashboard.financialseptscore += ApiLoading.data[i]["Score_September"];
        Dashboard.financialoctscore += ApiLoading.data[i]["Score_October"];
        Dashboard.financialnovscore += ApiLoading.data[i]["Score_November"];
        Dashboard.financialdesscore += ApiLoading.data[i]["Score_December"];
      }
    }
    Dashboard.financialtotalscore = Dashboard.financialjanscore +
        Dashboard.financialfebscore +
        Dashboard.financialmarchscore +
        Dashboard.financialaprilscore +
        Dashboard.financialmayscore +
        Dashboard.financialjunescore +
        Dashboard.financialjulyscore +
        Dashboard.financialaugestscore +
        Dashboard.financialseptscore +
        Dashboard.financialoctscore +
        Dashboard.financialnovscore +
        Dashboard.financialdesscore;
    //customer month
    for (int i = 0; i < ApiLoading.data.length; i++) {
      if (ApiLoading.data[i]["perspective"] == "Customer") {
        Dashboard.customerjanscore += ApiLoading.data[i]["Score_January"];
        Dashboard.customerfebscore += ApiLoading.data[i]["Score_February"];
        Dashboard.customermarchscore += ApiLoading.data[i]["Score_March"];
        Dashboard.customeraprilscore += ApiLoading.data[i]["Score_April"];
        Dashboard.customermayscore += ApiLoading.data[i]["Score_May"];
        Dashboard.customerjunescore += ApiLoading.data[i]["Score_June"];
        Dashboard.customerjulyscore += ApiLoading.data[i]["Score_July"];
        Dashboard.customeraugestscore += ApiLoading.data[i]["Score_August"];
        Dashboard.customerseptscore += ApiLoading.data[i]["Score_September"];
        Dashboard.customeroctscore += ApiLoading.data[i]["Score_October"];
        Dashboard.customernovscore += ApiLoading.data[i]["Score_November"];
        Dashboard.customerdesscore += ApiLoading.data[i]["Score_December"];
      }
    }
    Dashboard.customertotalscore = Dashboard.customerjanscore +
        Dashboard.customerfebscore +
        Dashboard.customermarchscore +
        Dashboard.customeraprilscore +
        Dashboard.customermayscore +
        Dashboard.customerjunescore +
        Dashboard.customerjulyscore +
        Dashboard.customeraugestscore +
        Dashboard.customerseptscore +
        Dashboard.customeroctscore +
        Dashboard.customernovscore +
        Dashboard.customerdesscore;
    //internal business process
    for (int i = 0; i < ApiLoading.data.length; i++) {
      if (ApiLoading.data[i]["perspective"] == "Internal Business Process") {
        Dashboard.internaljanscore += ApiLoading.data[i]["Score_January"];
        Dashboard.internalfebscore += ApiLoading.data[i]["Score_February"];
        Dashboard.internalmarchscore += ApiLoading.data[i]["Score_March"];
        Dashboard.internalaprilscore += ApiLoading.data[i]["Score_April"];
        Dashboard.internalmayscore += ApiLoading.data[i]["Score_May"];
        Dashboard.internaljunescore += ApiLoading.data[i]["Score_June"];
        Dashboard.internaljulyscore += ApiLoading.data[i]["Score_July"];
        Dashboard.internalaugestscore += ApiLoading.data[i]["Score_August"];
        Dashboard.internalseptscore += ApiLoading.data[i]["Score_September"];
        Dashboard.internaloctscore += ApiLoading.data[i]["Score_October"];
        Dashboard.internalnovscore += ApiLoading.data[i]["Score_November"];
        Dashboard.internaldesscore += ApiLoading.data[i]["Score_December"];
      }
    }
    Dashboard.internaltotalscore = Dashboard.internaljanscore +
        Dashboard.internalfebscore +
        Dashboard.internalmarchscore +
        Dashboard.internalaprilscore +
        Dashboard.internalmayscore +
        Dashboard.internaljunescore +
        Dashboard.internaljulyscore +
        Dashboard.internalaugestscore +
        Dashboard.internalseptscore +
        Dashboard.internaloctscore +
        Dashboard.internalnovscore +
        Dashboard.internaldesscore;
    //leaning and growth
    for (int i = 0; i < ApiLoading.data.length; i++) {
      if (ApiLoading.data[i]["perspective"] == "Learning and Growth") {
        Dashboard.learningjanscore += ApiLoading.data[i]["Score_January"];
        Dashboard.learningfebscore += ApiLoading.data[i]["Score_February"];
        Dashboard.learningmarchscore += ApiLoading.data[i]["Score_March"];
        Dashboard.learningaprilscore += ApiLoading.data[i]["Score_April"];
        Dashboard.learningmayscore += ApiLoading.data[i]["Score_May"];
        Dashboard.learningjunescore += ApiLoading.data[i]["Score_June"];
        Dashboard.learningjulyscore += ApiLoading.data[i]["Score_July"];
        Dashboard.learningaugestscore += ApiLoading.data[i]["Score_August"];
        Dashboard.learningseptscore += ApiLoading.data[i]["Score_September"];
        Dashboard.learningoctscore += ApiLoading.data[i]["Score_October"];
        Dashboard.learningnovscore += ApiLoading.data[i]["Score_November"];
        Dashboard.learningdesscore += ApiLoading.data[i]["Score_December"];
      }
    }
    Dashboard.learningtotalscore = Dashboard.learningjanscore +
        Dashboard.learningfebscore +
        Dashboard.learningmarchscore +
        Dashboard.learningaprilscore +
        Dashboard.learningmayscore +
        Dashboard.learningjunescore +
        Dashboard.learningjulyscore +
        Dashboard.learningaugestscore +
        Dashboard.learningseptscore +
        Dashboard.learningoctscore +
        Dashboard.learningnovscore +
        Dashboard.learningdesscore;
    SizeConfig().init(context);
    //financia color
    if (Dashboard.financialtotalscore * 100 / Dashboard.financialWaight < 50) {
      setState(() {
        colorcodepathfinancial = "assets/deepred.png";
      });
    } else if (Dashboard.financialtotalscore *
                100 /
                Dashboard.financialWaight >=
            50 &&
        Dashboard.financialtotalscore * 100 / Dashboard.financialWaight < 75) {
      setState(() {
        colorcodepathfinancial = "assets/lightred.png";
      });
    } else if (Dashboard.financialtotalscore *
                100 /
                Dashboard.financialWaight >=
            75 &&
        Dashboard.financialtotalscore * 100 / Dashboard.financialWaight < 100) {
      setState(() {
        colorcodepathfinancial = "assets/amber.png";
      });
    } else if (Dashboard.financialtotalscore *
                100 /
                Dashboard.financialWaight >=
            100 &&
        Dashboard.financialtotalscore * 100 / Dashboard.financialWaight < 120) {
      setState(() {
        colorcodepathfinancial = "assets/green.png";
      });
    } else if (Dashboard.financialtotalscore *
            100 /
            Dashboard.financialWaight >=
        120) {
      setState(() {
        colorcodepathfinancial = "assets/cyan.png";
      });
    }
    //customercolor
    if (Dashboard.customertotalscore * 100 / Dashboard.customerlWaight < 50) {
      setState(() {
        colorcodepathCustomer = "assets/deepred.png";
      });
    } else if (Dashboard.customertotalscore * 100 / Dashboard.customerlWaight >=
            50 &&
        Dashboard.customertotalscore * 100 / Dashboard.customerlWaight < 75) {
      setState(() {
        colorcodepathCustomer = "assets/lightred.png";
      });
    } else if (Dashboard.customertotalscore * 100 / Dashboard.customerlWaight >=
            75 &&
        Dashboard.customertotalscore * 100 / Dashboard.customerlWaight < 100) {
      setState(() {
        colorcodepathCustomer = "assets/amber.png";
      });
    } else if (Dashboard.customertotalscore * 100 / Dashboard.customerlWaight >=
            100 &&
        Dashboard.customertotalscore * 100 / Dashboard.customerlWaight < 120) {
      setState(() {
        colorcodepathCustomer = "assets/green.png";
      });
    } else if (Dashboard.customertotalscore * 100 / Dashboard.customerlWaight >=
        120) {
      setState(() {
        colorcodepathCustomer = "assets/cyan.png";
      });
    }
    //internal Business Process
    if (Dashboard.internaltotalscore * 100 / Dashboard.internalWaight < 50) {
      setState(() {
        colorcodepathInternalBusinessProcess = "assets/deepred.png";
      });
    } else if (Dashboard.internaltotalscore * 100 / Dashboard.internalWaight >=
            50 &&
        Dashboard.internaltotalscore * 100 / Dashboard.internalWaight < 75) {
      setState(() {
        colorcodepathInternalBusinessProcess = "assets/lightred.png";
      });
    } else if (Dashboard.internaltotalscore * 100 / Dashboard.internalWaight >=
            75 &&
        Dashboard.internaltotalscore * 100 / Dashboard.internalWaight < 100) {
      setState(() {
        colorcodepathInternalBusinessProcess = "assets/amber.png";
      });
    } else if (Dashboard.internaltotalscore * 100 / Dashboard.internalWaight >=
            100 &&
        Dashboard.internaltotalscore * 100 / Dashboard.internalWaight < 120) {
      setState(() {
        colorcodepathInternalBusinessProcess = "assets/green.png";
      });
    } else if (Dashboard.internaltotalscore * 100 / Dashboard.internalWaight >=
        120) {
      setState(() {
        colorcodepathInternalBusinessProcess = "assets/cyan.png";
      });
    }
    //Learning and Growth
    if (Dashboard.learningtotalscore * 100 / Dashboard.learningWaight < 50) {
      setState(() {
        colorcodepathLearningandGrowth = "assets/deepred.png";
      });
    } else if (Dashboard.learningtotalscore * 100 / Dashboard.learningWaight >=
            50 &&
        Dashboard.learningtotalscore * 100 / Dashboard.learningWaight < 75) {
      setState(() {
        colorcodepathLearningandGrowth = "assets/lightred.png";
      });
    } else if (Dashboard.learningtotalscore * 100 / Dashboard.learningWaight >=
            75 &&
        Dashboard.learningtotalscore * 100 / Dashboard.learningWaight < 100) {
      setState(() {
        colorcodepathLearningandGrowth = "assets/amber.png";
      });
    } else if (Dashboard.learningtotalscore * 100 / Dashboard.learningWaight >=
            100 &&
        Dashboard.learningtotalscore * 100 / Dashboard.learningWaight < 120) {
      setState(() {
        colorcodepathLearningandGrowth = "assets/green.png";
      });
    } else if (Dashboard.learningtotalscore * 100 / Dashboard.learningWaight >=
        120) {
      setState(() {
        colorcodepathLearningandGrowth = "assets/cyan.png";
      });
    }

    double totalScoreCard = ((Dashboard.customertotalscore *
                100 /
                Dashboard.customerlWaight) +
            (Dashboard.financialtotalscore * 100 / Dashboard.financialWaight) +
            (Dashboard.internaltotalscore * 100 / Dashboard.internalWaight) +
            (Dashboard.learningtotalscore * 100 / Dashboard.learningWaight)) /
        4;
    //Total Score Card Color
    if (totalScoreCard < 50) {
      setState(() {
        colorcodepathTotalScoreCard = "assets/deepred.png";
      });
    } else if (totalScoreCard >= 50 && totalScoreCard < 75) {
      setState(() {
        colorcodepathTotalScoreCard = "assets/lightred.png";
      });
    } else if (totalScoreCard >= 75 && totalScoreCard < 100) {
      setState(() {
        colorcodepathTotalScoreCard = "assets/amber.png";
      });
    } else if (totalScoreCard >= 100 && totalScoreCard < 120) {
      setState(() {
        colorcodepathTotalScoreCard = "assets/green.png";
      });
    } else if (totalScoreCard >= 120) {
      setState(() {
        colorcodepathTotalScoreCard = "assets/cyan.png";
      });
    }

    final _screenshotController = ScreenshotController();
    final _screenshotController2 = ScreenshotController();
    final _screenshotController3 = ScreenshotController();
    final _screenshotController4 = ScreenshotController();
    final _screenshotController5 = ScreenshotController();
    final WebImageDownloader _webImageDownloader = WebImageDownloader();
    bool downloading = false;
    Future<void> _takeScreenshot() async {
      final imageFile = await _screenshotController.capture();
      setState(() {
        downloading = true;
      });
      //const _url = "https://picsum.photos/200";
      await _webImageDownloader.downloadImageFromUInt8List(
          uInt8List: imageFile);
      setState(() {
        downloading = false;
      });
    }

    Future<void> _takeScreenshot2() async {
      final imageFile = await _screenshotController2.capture();
      setState(() {
        downloading = true;
      });
      //const _url = "https://picsum.photos/200";
      await _webImageDownloader.downloadImageFromUInt8List(
          uInt8List: imageFile);
      setState(() {
        downloading = false;
      });
    }

    Future<void> _takeScreenshot3() async {
      final imageFile = await _screenshotController3.capture();
      setState(() {
        downloading = true;
      });
      //const _url = "https://picsum.photos/200";
      await _webImageDownloader.downloadImageFromUInt8List(
          uInt8List: imageFile);
      setState(() {
        downloading = false;
      });
    }

    Future<void> _takeScreenshot4() async {
      final imageFile = await _screenshotController4.capture();
      setState(() {
        downloading = true;
      });
      //const _url = "https://picsum.photos/200";
      await _webImageDownloader.downloadImageFromUInt8List(
          uInt8List: imageFile);
      setState(() {
        downloading = false;
      });
    }

    Future<void> _takeScreenshot5() async {
      final imageFile = await _screenshotController5.capture();
      setState(() {
        downloading = true;
      });
      //const _url = "https://picsum.photos/200";
      await _webImageDownloader.downloadImageFromUInt8List(
          uInt8List: imageFile);
      setState(() {
        downloading = false;
      });
    }

    // print(PaymentDetailList.UniquePerpective[1]);
    return Scaffold(
      key: _drawerKey,
      drawer: SizedBox(width: 100, child: SideMenu()),
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              elevation: 0,
              backgroundColor: AppColors.white,
              leading: IconButton(
                  onPressed: () {
                    _drawerKey.currentState.openDrawer();
                  },
                  icon: Icon(Icons.menu, color: AppColors.black)),
              actions: [
                AppBarActionItems(),
              ],
            )
          : PreferredSize(
              preferredSize: Size.zero,
              child: SizedBox(),
            ),
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Dashboard.commited),
                fit: BoxFit.fitWidth,
                opacity: 0.2)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                  flex: 10,
                  child: SafeArea(
                    child: SingleChildScrollView(
                      padding:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Header(),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical * 4,
                          ),
                          Center(
                            child: IconButton(
                                icon: Image.asset(
                                  'assets/screenshot.png',
                                  width: 40,
                                ),
                                onPressed: () {
                                  _takeScreenshot();
                                }),
                          ),

                          SizedBox(
                              width: SizeConfig.screenWidth,
                              child: Screenshot(
                                child: Wrap(
                                  spacing: 10,
                                  runSpacing: 10,
                                  alignment: WrapAlignment.spaceBetween,
                                  children: [
                                    InfoCard(
                                      icon: 'assets/total.svg',
                                      label: "Total Score Card",
                                      amount: totalScoreCard,
                                      outOfFive: double.parse(
                                          ((totalScoreCard * 5) / 100)
                                              .toStringAsFixed(2)),
                                      colorCode: colorcodepathTotalScoreCard,
                                    ),
                                    SizedBox(
                                      height: 50,
                                      width: 50,
                                    ),
                                    Row(
                                      children: [
                                        InfoCard(
                                          icon: 'assets/customer.svg',
                                          label: "Customer",
                                          amount: Dashboard.customertotalscore *
                                              100 /
                                              Dashboard.customerlWaight,
                                          outOfFive: double.parse((((Dashboard
                                                              .customertotalscore *
                                                          100 /
                                                          Dashboard
                                                              .customerlWaight) *
                                                      5) /
                                                  100)
                                              .toStringAsFixed(2)),
                                          colorCode: colorcodepathCustomer,
                                        ),
                                        SizedBox(
                                          height: 50,
                                          width: 50,
                                        ),
                                        InfoCard(
                                          icon: 'assets/financila.svg',
                                          label: "Financial",
                                          amount:
                                              Dashboard.financialtotalscore *
                                                  100 /
                                                  Dashboard.financialWaight,
                                          outOfFive: double.parse(
                                              (((Dashboard.financialtotalscore *
                                                              100 /
                                                              Dashboard
                                                                  .financialWaight) *
                                                          5) /
                                                      100)
                                                  .toStringAsFixed(2)),
                                          colorCode: colorcodepathfinancial,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        InfoCard(
                                          icon: 'assets/internal.svg',
                                          label: "Internal Business Process",
                                          amount: Dashboard.internaltotalscore *
                                              100 /
                                              Dashboard.internalWaight,
                                          outOfFive: double.parse((((Dashboard
                                                              .internaltotalscore *
                                                          100 /
                                                          Dashboard
                                                              .internalWaight) *
                                                      5) /
                                                  100)
                                              .toStringAsFixed(2)),
                                          colorCode:
                                              colorcodepathInternalBusinessProcess,
                                        ),
                                        SizedBox(
                                          height: 50,
                                          width: 50,
                                        ),
                                        InfoCard(
                                          icon: 'assets/learning.svg',
                                          label: "Learning and Growth",
                                          amount: Dashboard.learningtotalscore *
                                              100 /
                                              Dashboard.learningWaight,
                                          outOfFive: double.parse((((Dashboard
                                                              .learningtotalscore *
                                                          100 /
                                                          Dashboard
                                                              .learningWaight) *
                                                      5) /
                                                  100)
                                              .toStringAsFixed(2)),
                                          colorCode:
                                              colorcodepathLearningandGrowth,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                controller: _screenshotController,
                              )),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical * 4,
                          ),
                          Center(
                            child: IconButton(
                                icon: Image.asset(
                                  'assets/screenshot.png',
                                  width: 40,
                                ),
                                onPressed: () {
                                  _takeScreenshot2();
                                }),
                          ),

                          SizedBox(
                            height: 2,
                          ),
                          Screenshot(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          PrimaryText(
                                              text: '\Customer',
                                              size: 30,
                                              fontWeight: FontWeight.w800),
                                          PrimaryText(
                                            text: 'Monthly Status',
                                            size: 16,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.secondary,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.blockSizeVertical * 3,
                                  ),
                                  Container(
                                    height: 180,
                                    child: BarChartCopmponent(),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.blockSizeVertical * 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      PrimaryText(
                                        text: 'quarterly status',
                                        size: 16,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.secondary,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.blockSizeVertical * 3,
                                  ),
                                  HistoryTable(),
                                  if (!Responsive.isDesktop(context))
                                    PaymentDetailList(),
                                ],
                              ),
                              controller: _screenshotController2),

                          SizedBox(
                            height: SizeConfig.blockSizeVertical * 4,
                          ),
                          Center(
                            child: IconButton(
                                icon: Image.asset(
                                  'assets/screenshot.png',
                                  width: 40,
                                ),
                                onPressed: () {
                                  _takeScreenshot3();
                                }),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Screenshot(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          PrimaryText(
                                              text: '\Financial',
                                              size: 30,
                                              fontWeight: FontWeight.w800),
                                          PrimaryText(
                                            text: 'Monthly Status',
                                            size: 16,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.secondary,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.blockSizeVertical * 3,
                                  ),
                                  Container(
                                    height: 180,
                                    child: BarChartCopmponent2(),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.blockSizeVertical * 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      PrimaryText(
                                        text: 'quarterly status',
                                        size: 16,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.secondary,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.blockSizeVertical * 3,
                                  ),
                                  HistoryTable2(),
                                  if (!Responsive.isDesktop(context))
                                    PaymentDetailList(),
                                ],
                              ),
                              controller: _screenshotController3),

                          //internal business process

                          SizedBox(
                            height: SizeConfig.blockSizeVertical * 4,
                          ),
                          Center(
                            child: IconButton(
                                icon: Image.asset(
                                  'assets/screenshot.png',
                                  width: 40,
                                ),
                                onPressed: () {
                                  _takeScreenshot4();
                                }),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Screenshot(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          PrimaryText(
                                              text:
                                                  '\Internal Business Process',
                                              size: 30,
                                              fontWeight: FontWeight.w800),
                                          PrimaryText(
                                            text: 'Monthly Status',
                                            size: 16,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.secondary,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.blockSizeVertical * 3,
                                  ),
                                  Container(
                                    height: 180,
                                    child: BarChartCopmponent3(),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.blockSizeVertical * 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      PrimaryText(
                                        text: 'quarterly status',
                                        size: 16,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.secondary,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.blockSizeVertical * 3,
                                  ),
                                  HistoryTable3(),
                                  if (!Responsive.isDesktop(context))
                                    PaymentDetailList(),
                                ],
                              ),
                              controller: _screenshotController4),

                          //learning and growth
                          SizedBox(
                            height: SizeConfig.blockSizeVertical * 4,
                          ),
                          Center(
                            child: IconButton(
                                icon: Image.asset(
                                  'assets/screenshot.png',
                                  width: 40,
                                ),
                                onPressed: () {
                                  _takeScreenshot4();
                                }),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Screenshot(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          PrimaryText(
                                              text: '\Learning and Growth',
                                              size: 30,
                                              fontWeight: FontWeight.w800),
                                          PrimaryText(
                                            text: 'Monthly Status',
                                            size: 16,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.secondary,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.blockSizeVertical * 3,
                                  ),
                                  Container(
                                    height: 180,
                                    child: BarChartCopmponent4(),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.blockSizeVertical * 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      PrimaryText(
                                        text: 'quarterly status',
                                        size: 16,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.secondary,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.blockSizeVertical * 3,
                                  ),
                                  HistoryTable4(),
                                  if (!Responsive.isDesktop(context))
                                    PaymentDetailList()
                                ],
                              ),
                              controller: _screenshotController5),
                        ],
                      ),
                    ),
                  )),
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 4,
                child: SafeArea(
                  child: Container(
                    width: double.infinity,
                    height: SizeConfig.screenHeight,
                    decoration: BoxDecoration(
                        color: AppColors.secondaryBg.withOpacity(0.4)),
                    child: SingleChildScrollView(
                      padding:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                      child: Column(
                        children: [
                          AppBarActionItems(),
                          PaymentDetailList(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      )),
    );
  }
}
