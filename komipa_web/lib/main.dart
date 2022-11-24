import 'package:flutter/material.dart';
import 'package:komipa_web/pages/LoginPage/Register.dart';
import 'package:komipa_web/pages/home.dart';

import 'package:komipa_web/pages/LoginPage/login.dart';
import 'package:firebase_core/firebase_core.dart';
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

      // home: ConfirmPage(),
      home: HomePage(),
    );
  }
}
