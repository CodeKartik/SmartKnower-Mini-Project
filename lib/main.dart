import 'package:flutter/material.dart';
import 'package:smartknower_mini_project/Screens/login&regi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SKMini',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: LoginOrRegisterScreen(),
    );
  }
}
