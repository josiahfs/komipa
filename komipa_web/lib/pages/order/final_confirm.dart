import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komipa_web/pages/home.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/checklist.png'),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  'Sipp.. Pesananmu ',
                  style: GoogleFonts.inter(fontSize: 40),
                ),
                Text(
                  'sudah Terkonfirmasi!',
                  style: GoogleFonts.inter(fontSize: 40),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAll(HomePage());
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 9, horizontal: 20),
                child: Text("Kembali ke Beranda",
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      color: Colors.white,
                    )),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color(0xffC76100)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
