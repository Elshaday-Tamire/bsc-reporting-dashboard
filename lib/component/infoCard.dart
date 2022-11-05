import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/config/responsive.dart';
import 'package:responsive_dashboard/config/size_config.dart';
import 'package:responsive_dashboard/style/colors.dart';
import 'package:responsive_dashboard/style/style.dart';

class InfoCard extends StatefulWidget {
  static String selected = "Financial";
  final String icon;
  final String label;
  final num amount;
  final String colorCode;
  static Color percentcolor = Colors.black;
  static Color pIconColor = Colors.white;

  InfoCard({this.icon, this.label, this.amount, this.colorCode});

  @override
  State<InfoCard> createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      constraints: BoxConstraints(
          minWidth: Responsive.isDesktop(context)
              ? 350
              : SizeConfig.screenWidth / 2 - 40),
      padding: EdgeInsets.only(
          top: 20,
          bottom: 20,
          left: 20,
          right: Responsive.isMobile(context) ? 20 : 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Card(
              borderOnForeground: true,
              color: InfoCard.pIconColor,
              child: SvgPicture.asset(widget.icon, width: 35),
            ),
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical * 2,
          ),
          Center(
            child: InkWell(
              child: PrimaryText(
                  text: widget.label, color: AppColors.secondary, size: 16),
              onTap: () {
                setState(() {
                  InfoCard.selected = widget.label;
                  print(InfoCard.selected);
                });
              },
            ),
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical * 2,
          ),
          Center(
            child: SizedBox(
              height: 50,
              width: 90,
              child: Row(
                children: [
                  Countup(
                    begin: 0,
                    end: widget.amount,
                    duration: Duration(seconds: 8),
                    separator: ',',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                        color: InfoCard.percentcolor),
                  ),
                  Text(
                    " %  ",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: InfoCard.percentcolor),
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical * 2,
                  ),
                  Expanded(
                    child: Image.asset(widget.colorCode, width: 35),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
