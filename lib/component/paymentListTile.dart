import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/component/StarRating.dart';
import 'package:responsive_dashboard/style/colors.dart';
import 'package:responsive_dashboard/style/style.dart';

class PaymentListTile extends StatelessWidget {
  final String icon;
  final String label;
  final String amount;
  final double outOfFive;
  final String target;
  final String actual;
  String colorCode;

  PaymentListTile(
      {this.icon,
      this.label,
      this.amount,
      this.outOfFive,
      this.colorCode,
      this.target,
      this.actual});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 0, right: 20),
      visualDensity: VisualDensity.standard,
      leading: Container(
          width: 50,
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(
            icon,
            width: 20,
          )),
      title: PrimaryText(text: label, size: 14, fontWeight: FontWeight.w500),
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            target,
            style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Color.fromRGBO(0, 59, 126, 1),
                fontFamily: "Poppins"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                actual,
                style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    color: Color.fromRGBO(
                      0,
                      59,
                      126,
                      1,
                    ),
                    fontFamily: "Poppins"),
              ),
              Image.asset(colorCode, width: 22),
            ],
          ),
          PrimaryText(
            text: amount,
            size: 16,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(0, 174, 239, 1),
          ),
          StarRating(
              rating: outOfFive,
              size: 15,
              color: Colors.blue,
              borderColor: Colors.grey),
          Text(
            outOfFive.toString() + "/5",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      onTap: () {
        print('tap');
      },
      selected: true,
    );
  }
}
