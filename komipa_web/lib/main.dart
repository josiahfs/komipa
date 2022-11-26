import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:komipa_web/pages/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:komipa_web/pages/menu/menu-page.dart';
import 'package:komipa_web/pages/order/badGateway.dart';
import 'package:komipa_web/pages/order/final_confirm.dart';
import 'package:komipa_web/pages/order/menu_order.dart';
import 'package:komipa_web/pages/order/payment.dart';
import 'package:komipa_web/widget/payment-choice.dart';
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
    return GetMaterialApp(
      title: 'KOMIPA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuOrder(),
    );
  }
}
