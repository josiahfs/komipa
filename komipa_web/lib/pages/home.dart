import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

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
          title: const Text(
            "KOMIPA",
            style: TextStyle(fontSize: 40),
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
                padding: const EdgeInsets.symmetric(horizontal: 64.0),
                child: Container(
                  color: Colors.transparent,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
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
                            'KOMIPA,',
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
            )
          ],
        ),
      ),
    );
  }
}
