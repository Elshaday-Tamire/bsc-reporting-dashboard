import 'package:flutter/material.dart';
import 'package:responsive_dashboard/config/responsive.dart';
import 'package:responsive_dashboard/config/size_config.dart';
import 'package:responsive_dashboard/data.dart';
import 'package:responsive_dashboard/style/colors.dart';
import 'package:responsive_dashboard/style/style.dart';

class HistoryTable4 extends StatefulWidget {
  const HistoryTable4({
    Key key,
  }) : super(key: key);

  @override
  State<HistoryTable4> createState() => _HistoryTable4State();
}

class _HistoryTable4State extends State<HistoryTable4> {
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
            transactionHistory4.length,
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
                        AssetImage(transactionHistory4[index]["avatar"]),
                  ),
                ),
                PrimaryText(
                  text: transactionHistory4[index]["label"],
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondary,
                ),
                PrimaryText(
                  text: transactionHistory4[index]["amount"],
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
                        AssetImage(transactionHistory4[index]["time"]),
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
                        AssetImage(transactionHistory4[index]["status"]),
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
