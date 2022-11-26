import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komipa_web/pages/LoginPage/login.dart';

import '../pages/menu/menu_page.dart';

class NavBar extends StatelessWidget {
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
            Get.to(MenuPage());
          },
        ),
        NavBarItem(
          text: "Login",
          onTap: () {
            Get.offAll(LoginPage());
          },
        ),
      ],
    );
  }
}
