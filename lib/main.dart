import 'package:flutter/material.dart';
import 'package:responsive_dashboard/component/Navigation.dart';
import 'package:responsive_dashboard/component/email.dart';
import 'package:responsive_dashboard/dashboard.dart';
import 'package:responsive_dashboard/loading.dart';
import 'package:responsive_dashboard/style/colors.dart';
import 'package:responsive_dashboard/ui/pages/login_page.dart';
import 'package:responsive_dashboard/ui/pages/login_page_left_side.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LoginPageLeftSide.username = "";
    LoginPageLeftSide.password = "";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: AppColors.primaryBg),
      home: LoginPage(),
    );
  }
}
