import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CtaPage extends StatelessWidget {
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
                            Text(
                              'Beranda',
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              'Tentang Kami',
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              'Menu',
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 81,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Login',
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Sign Up',
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            child: Image.asset(
                              'assets/icon/icon1.png',
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            child: Image.asset(
                              'assets/icon/icon2.png',
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            child: Image.asset(
                              'assets/icon/icon3.png',
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            child: Image.asset(
                              'assets/icon/icon4.png',
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            child: Image.asset(
                              'assets/icon/icon5.png',
                              width: 40,
                              height: 40,
                            ),
                          ),
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
