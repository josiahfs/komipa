import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komipa_web/pages/LoginPage/login.dart';
import 'package:komipa_web/pages/home/about.dart';
import 'package:komipa_web/pages/home/cta.dart';
import 'package:komipa_web/pages/home/landing.dart';
import 'package:komipa_web/pages/home/menu.dart';
import 'package:komipa_web/pages/menu/menu_page.dart';
import 'package:komipa_web/widget/navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    final sh = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/home-bg.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar:
            PreferredSize(preferredSize: Size.fromHeight(50), child: NavBar()),
        body: ListView(
          children: [LandingPage(), AboutPage(), MenuRecom(), CtaPage()],
        ),
      ),
    );
  }
}
