import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class FinalConfirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    final sh = MediaQuery.of(context).size.height;
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/checklist.png'),
            Column(
              children: [
                Text(
                  'Sipp.. Pesananmu ',
                  style: GoogleFonts.inter(fontSize: 48),
                ),
                Text(
                  'Sudah Terkonfirmasi!',
                  style: GoogleFonts.inter(fontSize: 48),
                ),
              ],
            ),
            Container(
              width: 345,
              height: 57,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffC76100)),
              child: Center(
                child: Text(
                  'Kembali ke Beranda',
                  style: GoogleFonts.inter(fontSize: 27, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
