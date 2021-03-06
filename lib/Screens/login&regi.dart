import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smartknower_mini_project/Controller/passwordController.dart';
import 'package:smartknower_mini_project/Screens/loginScree.dart';
import 'package:smartknower_mini_project/Screens/signupScreen.dart';
import 'package:smartknower_mini_project/Widgets/gradientButton.dart';

class LoginOrRegisterScreen extends StatefulWidget {
  const LoginOrRegisterScreen({Key? key}) : super(key: key);

  @override
  _LoginOrRegisterScreenState createState() => _LoginOrRegisterScreenState();
}

class _LoginOrRegisterScreenState extends State<LoginOrRegisterScreen> {
  void initState() {
    super.initState();
    checkIfLogin();
  }

  Future<void> checkIfLogin() async {
    bool isSignin = await PasswordController.isSignin();
    bool isLoggedOut = await PasswordController.checkLoggedOut();
    print("isLoggedOut $isLoggedOut");
    print("isSignin $isSignin");
    if (isSignin && isLoggedOut) {
      // Timer(
      //     Duration(seconds: 3),
      //     () => Navigator.pushReplacement(
      //         context, MaterialPageRoute(builder: (c) => HomeScreen())));
    } else {
      // Timer(
      //     Duration(seconds: 3),
      //     () => Navigator.pushReplacement(
      //         context, MaterialPageRoute(builder: (c) => LoginScreen())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GradientButton(
              buttonName: "LOGIN",
              onpressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => LoginScreen()));
              }),
          GradientButton(
              buttonName: "REGISTER",
              onpressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => SignUpScreen()));
              }),
        ],
      ),
    );
  }
}
