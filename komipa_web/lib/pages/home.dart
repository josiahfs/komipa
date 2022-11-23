import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komipa_web/pages/LoginPage/login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;

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
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 64.0),
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
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
