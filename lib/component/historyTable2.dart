import 'package:flutter/material.dart';
import 'package:responsive_dashboard/config/responsive.dart';
import 'package:responsive_dashboard/config/size_config.dart';
import 'package:responsive_dashboard/data.dart';
import 'package:responsive_dashboard/style/colors.dart';
import 'package:responsive_dashboard/style/style.dart';

class HistoryTable2 extends StatefulWidget {
  const HistoryTable2({
    Key key,
  }) : super(key: key);

  @override
  State<HistoryTable2> createState() => _HistoryTable2State();
}

class _HistoryTable2State extends State<HistoryTable2> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection:
          Responsive.isDesktop(context) ? Axis.vertical : Axis.horizontal,
      child: SizedBox(
        width: Responsive.isDesktop(context)
            ? double.infinity
            : SizeConfig.screenWidth,
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: List.generate(
            transactionHistory2.length,
            (index) => TableRow(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 20.0),
                  child: CircleAvatar(
                    radius: 17,
                    backgroundImage:
                        AssetImage(transactionHistory2[index]["avatar"]),
                  ),
                ),
                PrimaryText(
                  text: transactionHistory2[index]["label"],
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondary,
                ),
                PrimaryText(
                  text: transactionHistory2[index]["amount"],
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondary,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 20.0),
                  child: CircleAvatar(
                    radius: 17,
                    backgroundImage:
                        AssetImage(transactionHistory2[index]["time"]),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 20.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.black.withOpacity(0.00001),
                    radius: 17,
                    backgroundImage:
                        AssetImage(transactionHistory2[index]["status"]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
