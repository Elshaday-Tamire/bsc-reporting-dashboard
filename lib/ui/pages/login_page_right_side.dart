import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPageRightSide extends StatelessWidget {
  const LoginPageRightSide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: Colors.blueGrey[900],
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/cyanback.jpg'), fit: BoxFit.cover),
        ),
        child: Center(
          child: SizedBox(
            height: 500,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaY: 12, sigmaX: 12),
                      child: Container(
                        alignment: Alignment.topLeft,
                        color: Colors.white.withOpacity(.3),
                        padding: const EdgeInsets.all(42),
                        child: const Text(
                          '"THE BEST WAY TO FIGHT POVERTY IS THROUGH COOPERATION 🤝"',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25.00,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontFamily: "Poppins"),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 60.0),
                    child: Image.asset(
                      'assets/obbohaile2.jpg',
                      width: 400,
                      height: 300,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
