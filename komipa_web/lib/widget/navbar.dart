import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komipa_web/pages/LoginPage/account.dart';
import 'package:komipa_web/pages/LoginPage/login.dart';
import 'package:komipa_web/pages/aboutUs/about_us.dart';
import 'package:komipa_web/pages/home.dart';
import '../pages/menu/menu_page.dart';
import '../pages/order/badGateway.dart';

class NavBar extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser;

  Splitter() {
    List<String> nama = (user!.email.toString().split('@'));
    String username = nama[0];

    return username;
  }

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    final sh = MediaQuery.of(context).size.height;
    return AdaptiveNavBar(
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
            Get.to(AboutUs());
          },
        ),
        NavBarItem(
          text: "Menu",
          onTap: () {
            Get.to(MenuPage());
          },
        ),
        NavBarItem(
          text: user != null ? Splitter() : "Login",
          onTap: () {
            user != null ? Get.to(AccountPage()) : Get.off(LoginPage());
          },
        ),
      ],
    );
  }
}
