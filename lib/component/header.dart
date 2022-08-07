import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      SizedBox(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // PrimaryText(
              //     text: 'Vision', size: 30, fontWeight: FontWeight.w800),
              // PrimaryText(
              //   text: 'To be the leading private bank in Ethiopia by 2025.',
              //   size: 16,
              //   fontWeight: FontWeight.w400,
              //   color: AppColors.secondary,
              // )
              // Text(
              //   "To be the leading private bank in Ethiopia by 2025.",
              //   overflow: TextOverflow.ellipsis,
              //   style: TextStyle(
              //       fontSize: 16,
              //       fontWeight: FontWeight.w400,
              //       color: AppColors.secondary),
              // ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(width: 20.0, height: 100.0),
                  // TextLiquidFill(
                  //   text: 'VISION',
                  //   waveColor: Colors.blue,
                  //   boxBackgroundColor: Colors.black,
                  //   textStyle: TextStyle(
                  //     fontSize: 30.0,
                  //     fontWeight: FontWeight.bold,
                  //     fontFamily: 'Poppins',
                  //   ),
                  //   boxHeight: 30.0,
                  // ),
                  Text(
                    "Vision",
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Poppins",
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 20.0, height: 100.0),
                  DefaultTextStyle(
                    style: const TextStyle(
                        fontSize: 23.0,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal,
                        color: Color.fromRGBO(44, 170, 226, 1),
                        fontWeight: FontWeight.bold),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        RotateAnimatedText('TO BE'),
                        RotateAnimatedText('THE LEADING'),
                        RotateAnimatedText('PRIVATE BANK'),
                        RotateAnimatedText('IN ETHIOPIA'),
                        RotateAnimatedText('BY 2025.'),
                      ],
                      totalRepeatCount: 100,
                      onTap: () {},
                    ),
                  ),
                  SizedBox(
                    width: 300,
                  ),
                  // Text(
                  //   "THE BANK COMMITED TO BREAKTHROUGH",
                  //   style: TextStyle(
                  //       fontSize: 12,
                  //       fontStyle: FontStyle.italic,
                  //       fontFamily: "Poppins",
                  //       color: Colors.black,
                  //       fontWeight: FontWeight.bold),
                  // ),
                ],
              )
            ]),
      ),
      Spacer(
        flex: 1,
      ),
    ]);
  }
}
