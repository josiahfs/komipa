import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komipa_web/pages/home.dart';
import 'package:komipa_web/pages/progress.dart';
import 'package:komipa_web/widget/payment-choice.dart';

import '../LoginPage/account.dart';
import '../LoginPage/login.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    final sh = MediaQuery.of(context).size.height;
    final user = FirebaseAuth.instance.currentUser;
    
    return Scaffold(
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
              Get.offAll(HomePage());
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
            text: user != null ? "Halo" : "Login",
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
      body: Container(
        width: sw,
        height: sh,
        color: Color(0xffD9D9D9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Pembayaran',
              style: GoogleFonts.inter(
                  color: Color(0xffA65100),
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            StepProgressView(
              color: Color(0xffC76100),
              curStep: 3,
              width: sw * 0.6,
              titles: ['Kursi', 'Menu', 'Konfirmasi', 'Pembayaran'],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 570,
              height: 480,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color(0xffC76100),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Cara Pembayaran',
                          style: GoogleFonts.inter(
                              color: Color(0xffC76100),
                              fontSize: 32,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Rp 52.000,00',
                          style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 32,
                              fontWeight: FontWeight.w400),
                        ),
                        PaymentChoice(
                          name: 'OVO',
                        ),
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
