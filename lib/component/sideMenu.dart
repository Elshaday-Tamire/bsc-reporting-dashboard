import 'package:flutter/material.dart';
import 'package:responsive_dashboard/component/infoCard.dart';
import 'package:responsive_dashboard/config/size_config.dart';
import 'package:responsive_dashboard/style/colors.dart';
import '../dashboard.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        decoration: BoxDecoration(color: AppColors.secondaryBg),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.white,
                  child: Center(
                    child: Image.asset("assets/darkmode.png"),
                  ),
                ),
                onTap: () {
                  AppColors.white = Colors.blueGrey[900];
                  AppColors.secondary = Colors.white;
                  InfoCard.percentcolor = Colors.white;
                  AppColors.secondaryBg = Colors.black;
                  InfoCard.pIconColor = Colors.white;
                  AppColors.primaryBg = Colors.black;
                  Dashboard.commited = "assets/commitedblack.jpg";

                  AppColors.black = Colors.white;
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

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                },
              ),
              Divider(),
              GestureDetector(
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: Color.fromRGBO(44, 170, 226, 0.3),
                  child: Center(
                    child: Image.asset("assets/lightmode.png"),
                  ),
                ),
                onTap: () {
                  AppColors.white = Colors.white;
                  AppColors.secondary = Color(0xffa6a6a6);
                  InfoCard.percentcolor = Colors.black;
                  AppColors.secondaryBg = Color(0xffececf6);
                  InfoCard.pIconColor = Colors.white;
                  AppColors.primaryBg = Color.fromARGB(255, 43, 43, 87);
                  Dashboard.commited = "assets/commited.png";

                  AppColors.black = Colors.white;
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

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
