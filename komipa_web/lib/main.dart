import 'package:flutter/material.dart';
import 'package:komipa_web/pages/home.dart';
import 'package:komipa_web/pages/order/confirm.dart';
import 'package:komipa_web/pages/order/final_confirm.dart';
import 'package:komipa_web/pages/order/payment.dart';
import 'package:komipa_web/pages/order/seats.dart';

void main() {
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
      // home: ConfirmPage(),
      home: HomePage(),
    );
  }
}
