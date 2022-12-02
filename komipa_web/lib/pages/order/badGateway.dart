import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komipa_web/pages/home.dart';

class BadGateway extends StatelessWidget {
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
        body: ListView(children: [
          Container(
            // width: sw,
            // height: sh,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 64.0),
              child: Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/404.png',
                              width: 150, height: 150),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                              child: Text(
                            '404',
                            style: GoogleFonts.inter(
                                fontSize: 40,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                          Center(
                            child: Text('Halaman tidak dapat ditemukan',
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: Colors.black,
                                )),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: ElevatedButton(
                              onPressed: () {
                                Get.offAll(HomePage());
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 9, horizontal: 20),
                                child: Text("Kembali ke Beranda",
                                    style: GoogleFonts.inter(
                                      fontSize: 15,
                                      color: Colors.white,
                                    )),
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xffC76100)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ]),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
