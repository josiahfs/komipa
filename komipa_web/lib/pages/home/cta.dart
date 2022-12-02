import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komipa_web/pages/LoginPage/Register.dart';
import 'package:komipa_web/pages/LoginPage/login.dart';
import 'package:komipa_web/pages/aboutUs/about_us.dart';
import 'package:komipa_web/pages/home.dart';
import 'package:komipa_web/pages/menu/menu_page.dart';
import 'package:komipa_web/pages/order/badGateway.dart';

class CtaPage extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    final sh = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/food.png'), fit: BoxFit.fill),
      ),
      width: sw,
      height: sh,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 180.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Temukan Penawaran Menarik, Hanya di',
                  style: GoogleFonts.inter(
                      fontSize: 64,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'KOMIPA',
                  style: GoogleFonts.inter(
                      fontSize: 128,
                      color: Color(0xffF5B309),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            width: sw,
            height: sh * 0.3,
            color: Color(0xff422000),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 50.0, horizontal: 100.0),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'KOMIPA',
                          style: GoogleFonts.inter(
                              fontSize: 32,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Gedung Fakultas MIPA UGM Sekip Utara',
                          style: GoogleFonts.inter(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'Bulaksumur, Sinduadi, Mlati, Sleman, DI Yogyakarta',
                          style: GoogleFonts.inter(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '©Komipa UGM - All rights reserved.',
                          style: GoogleFonts.inter(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'A Project By Makmur Abadi 88',
                          style: GoogleFonts.inter(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.offAll(HomePage());
                              },
                              child: Text(
                                'Beranda',
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(AboutUs());
                              },
                              child: Text(
                                'Tentang Kami',
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(MenuPage());
                              },
                              child: Text(
                                'Menu',
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 81,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                if (user == null) {
                                  Get.off(LoginPage());
                                } else {
                                  Get.snackbar(
                                      'Error', 'User telah melakukan login',
                                      snackPosition: SnackPosition.BOTTOM,
                                      colorText: Colors.white,
                                      backgroundColor: Colors.red);
                                }
                              },
                              child: Text(
                                'Login',
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                if (user == null) {
                                  Get.off(RegisterPage());
                                } else {
                                  Get.snackbar(
                                      'Error', 'User telah melakukan login',
                                      snackPosition: SnackPosition.BOTTOM,
                                      colorText: Colors.white,
                                      backgroundColor: Colors.red);
                                }
                              },
                              child: Text(
                                'Sign Up',
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icon/icon1.png',
                          width: 40,
                          height: 40,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Image.asset(
                          'assets/icon/icon2.png',
                          width: 40,
                          height: 40,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Image.asset(
                          'assets/icon/icon3.png',
                          width: 40,
                          height: 40,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Image.asset(
                          'assets/icon/icon4.png',
                          width: 40,
                          height: 40,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Image.asset(
                          'assets/icon/icon5.png',
                          width: 40,
                          height: 40,
                        ),
                      ],
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
