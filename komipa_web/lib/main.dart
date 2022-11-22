import 'package:flutter/material.dart';
import 'package:komipa_web/pages/LoginPage/Register.dart';
import 'package:komipa_web/pages/home.dart';
import 'package:komipa_web/pages/LoginPage/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
      // home: const RegisterPage(),
    );
  }
}
