import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komipa_web/pages/LoginPage/account.dart';
import 'package:komipa_web/pages/LoginPage/login.dart';
import 'package:komipa_web/pages/home/about.dart';
import 'package:komipa_web/pages/home/cta.dart';
import 'package:komipa_web/pages/home/landing.dart';
import 'package:komipa_web/pages/home/menu.dart';

class HomePage extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser;

  Splitter() {
    List<String> nama = (user!.email.toString().split('@'));
    String username = nama[0];

    return username;
  }

  // List<String> docIDs = [];
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
        appBar: AdaptiveNavBar(
          backgroundColor: Color(0xffC76100),
          screenWidth: sw,
          title: Text(
            "KOMIPA",
            style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          centerTitle: false,
          navBarItems: [
            NavBarItem(
              text: "Beranda",
              onTap: () {
                Navigator.pushNamed(context, "routeName");
              },
            ),
            NavBarItem(
              text: "Tentang Kami",
              onTap: () {
                Navigator.pushNamed(context, "routeName");
              },
            ),
            NavBarItem(
              text: "Menu",
              onTap: () {
                Navigator.pushNamed(context, "routeName");
              },
            ),
            NavBarItem(
              // text: user != null ? "${user!.email}" : "Login",
              text: user != null ? Splitter() : "Login",
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            user != null ? AccountPage() : LoginPage()));
              },
            ),
          ],
        ),
        body: ListView(
          children: [LandingPage(), AboutPage(), MenuPage(), CtaPage()],
        ),
      ),
    );
  }
}
