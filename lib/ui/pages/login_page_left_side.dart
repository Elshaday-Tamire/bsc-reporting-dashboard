import 'package:flutter/material.dart';
import 'package:responsive_dashboard/loading.dart';

TextEditingController usernameController = new TextEditingController();
TextEditingController passwordController = new TextEditingController();

class LoginPageLeftSide extends StatefulWidget {
  LoginPageLeftSide({Key key}) : super(key: key);
  static String username = "";
  static String password = "";
  static String error = "";
  static Color errorColor = Colors.white;
  void clearText() {
    LoginPageLeftSide.username = "";
    LoginPageLeftSide.password = "";
    usernameController.text = "";
    passwordController.text = "";
  }

  @override
  State<LoginPageLeftSide> createState() => _LoginPageLeftSideState();
}

class _LoginPageLeftSideState extends State<LoginPageLeftSide> {
  @override
  Widget build(BuildContext context) {
    //LoginPageLeftSide().clearText();
    return Expanded(
        child: Center(
      child: Padding(
        padding: const EdgeInsets.all(120.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Login",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              "Coop Performace managment system",
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 24),
            TextField(
              controller: usernameController,
              decoration:
                  InputDecoration(label: Text("username"), hintText: ""),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration:
                  InputDecoration(label: Text("password"), hintText: ""),
            ),
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.center,
              child: MaterialButton(
                child: Text(
                  LoginPageLeftSide.error,
                  style: TextStyle(color: LoginPageLeftSide.errorColor),
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 24),
            MaterialButton(
              onPressed: () {
                setState(() {
                  LoginPageLeftSide.username =
                      usernameController.text.toString();
                  LoginPageLeftSide.password =
                      passwordController.text.toString();
                });
                if (usernameController.text == "" ||
                    passwordController.text == "") {
                  setState(() {
                    LoginPageLeftSide.error = "All fields are required";
                  });
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ApiLoading()),
                  );
                }
              },
              child: Text("Login"),
              minWidth: double.infinity,
              height: 52,
              elevation: 24,
              color: Colors.blueGrey[900],
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)),
            )
          ],
        ),
      ),
    ));
  }
}
