import 'package:flutter/material.dart';
import 'package:komipa_web/pages/LoginPage/Register.dart';
import 'package:komipa_web/pages/home.dart';
import 'package:komipa_web/pages/LoginPage/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:komipa_web/pages/order/badGateway.dart';
import 'package:komipa_web/pages/order/confirm.dart';
import 'package:komipa_web/pages/order/final_confirm.dart';
import 'package:komipa_web/pages/order/payment.dart';
import 'package:komipa_web/pages/order/seats.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KOMIPA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const LoginPage(),
      home: const HomePage(),
      // home: const RegisterPage(),
      // home: bad_gateway(),
    );
  }
}
