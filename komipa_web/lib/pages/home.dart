import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komipa_web/widget/menu-card.dart';

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
              text: "Login",
              onTap: () {
                Navigator.pushNamed(context, "routeName");
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            Container(
              width: sw,
              height: sh,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64),
                child: Center(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 220,
                        ),
                        Row(
                          children: [
                            Text(
                              'Selamat datang di ',
                              style: GoogleFonts.inter(
                                  fontSize: 60,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'KOMIPA',
                              style: GoogleFonts.inter(
                                fontSize: 60,
                                color: Color(0xffF5B309),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Kuliah rutinitas, ngopi prioritas!',
                          style: GoogleFonts.inter(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.transparent),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.white)),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 12),
                              child: Text(
                                'RESERVASI',
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/apa-itu.png'), fit: BoxFit.fill),
              ),
              width: sw,
              height: sh,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 64.0, vertical: 180),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Apa itu KOMIPA?',
                          style: GoogleFonts.inter(
                              fontSize: 40,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Image.asset('assets/line.png'),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'KOMIPA adalah kantin yang berada di lantai dasar gedung S1 Fakultas',
                          style: GoogleFonts.inter(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.w300),
                        ),
                        Text(
                          'MIPA Universitas Gadjah Mada. KOMIPA cocok untuk bersantai,',
                          style: GoogleFonts.inter(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.w300),
                        ),
                        Text(
                          'berkumpul, maupun berdiskusi.',
                          style: GoogleFonts.inter(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'Banyak pilihan menu yang terjangkau membuat KOMIPA selalu ramai',
                          style: GoogleFonts.inter(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.w300),
                        ),
                        Text(
                          'pengunjung. Namun, jangan khawatir karena kini KOMIPA sudah hadir',
                          style: GoogleFonts.inter(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.w300),
                        ),
                        Text(
                          'dengan fitur reservasi! Pesan tempat duduk, makanan, dan minuman kini',
                          style: GoogleFonts.inter(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.w300),
                        ),
                        Text(
                          'jauh lebih mudah.',
                          style: GoogleFonts.inter(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    Image.asset('assets/ayam.png'),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/orange-home.png'),
                    fit: BoxFit.cover),
              ),
              width: sw,
              height: sh,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 100),
                child: Column(children: [
                  Text(
                    'Menu',
                    style: GoogleFonts.inter(
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Makanan',
                        style: GoogleFonts.inter(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 142,
                      ),
                      Text(
                        'Minuman',
                        style: GoogleFonts.inter(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MenuCard(
                        image: 'assets/menu/menu1.png',
                        name: 'Ayam Geprek Original',
                        price: '13.000',
                      ),
                      MenuCard(
                        image: 'assets/menu/menu2.png',
                        name: 'Onigiri',
                        price: '10.000',
                      ),
                      MenuCard(
                        image: 'assets/menu/menu3.png',
                        name: 'Mie Goreng Seafood',
                        price: '18.000',
                      ),
                      MenuCard(
                        image: 'assets/menu/menu4.png',
                        name: 'Nasi Bakar',
                        price: '10.000',
                      ),
                      MenuCard(
                        image: 'assets/menu/menu1.png',
                        name: 'Ayam Geprek Original',
                        price: '13.000',
                      ),
                      MenuCard(
                        image: 'assets/menu/menu1.png',
                        name: 'Ayam Geprek Original',
                        price: '13.000',
                      ),
                    ],
                  )
                ]),
              ),
            ),
            Container(
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 50.0, horizontal: 100.0),
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
            )
          ],
        ),
      ),
    );
  }
}
