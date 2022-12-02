import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:komipa_web/pages/home.dart';
import 'package:komipa_web/pages/menu/menu_page.dart';

class AccountPage extends StatefulWidget {
  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  _signOut() async {
    await FirebaseAuth.instance
        .signOut()
        .then((value) => Get.offAll(HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    final sh = MediaQuery.of(context).size.height;
    final user = FirebaseAuth.instance.currentUser;
    Splitter() {
      List<String> nama = (user!.email.toString().split('@'));
      String username = nama[0];

      return username;
    }

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/login-bg.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
          appBar: AdaptiveNavBar(
            backgroundColor: Color(0xffC76100),
            screenWidth: sw,
            title: Text(
              "KOMIPA",
              style:
                  GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 24),
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
                  Get.to(MenuPage());
                },
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          body: Center(
            child: Container(
              width: 400,
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.account_circle_rounded,
                        size: 90,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Halo, ",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          letterSpacing: 2.0),
                    ),
                    Text(
                      Splitter(),
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          letterSpacing: 2.0),
                    ),
                    Spacer(),
                    Container(
                      height: 60,
                      width: 457,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xffC76100)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Get.offAll(HomePage());
                        },
                        child: Text(
                          "Homepage",
                          style: GoogleFonts.inter(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 60,
                      width: 457,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                side: BorderSide(color: Color(0xffC76100))),
                          ),
                        ),
                        onPressed: () {
                          _signOut();
                        },
                        child: Text(
                          "Logout",
                          style: GoogleFonts.inter(
                            fontSize: 20,
                            color: Color(0xffC76100),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
