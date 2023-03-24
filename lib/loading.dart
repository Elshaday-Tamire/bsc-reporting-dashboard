import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:responsive_dashboard/component/Navigation.dart';
import 'package:responsive_dashboard/ui/pages/login_page.dart';
import 'package:responsive_dashboard/ui/pages/login_page_left_side.dart';

class ApiLoading extends StatefulWidget {
  const ApiLoading({Key key}) : super(key: key);
  static String department = "";
  static List data;
  static var kpis = [];

  @override
  State<ApiLoading> createState() => _ApiLoadingState();
}

class _ApiLoadingState extends State<ApiLoading> {
  @override
  initState() {
    super.initState();
    new Timer(const Duration(seconds: 7), onClose);
  }

  onClose() async {
    //var url = Uri.parse('https://bsc-newapi.herokuapp.com/bsc/kpi/');
    //https://pms-apis.herokuapp.

    var response = await http
        .post(Uri.http('10.1.177.61:5003', 'core/auth/login/'), body: {
      "username": LoginPageLeftSide.username.toString(),
      "password": LoginPageLeftSide.password.toString()
    });

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body) as List;
      ApiLoading.data = result;
      for (int i = 0; i < result.length; i++) {
        ApiLoading.kpis.add(result[i]['kpi_name']);
      }
      print(ApiLoading.data);
      print((response.body).runtimeType);

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Navigation()),
      );
    } else {
      setState(() {
        LoginPageLeftSide.errorColor = Colors.orange;
        LoginPageLeftSide.error = "Incorrect credentials";
        LoginPageLeftSide().clearText();
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 29, 49, 1),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Color.fromRGBO(0, 29, 49, 1),
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Center(
                      child: Image.asset(
                        "assets/loadingpms.gif",
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
