import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komipa_web/pages/home/about.dart';
import 'package:komipa_web/pages/home/cta.dart';
import 'package:komipa_web/pages/home/landing.dart';
import 'package:komipa_web/pages/home/menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Kenapa enggak pake appBar aja?
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.05,
            color: Color(0xffC76100),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    'KOMIPA',
                    style: TextStyle(
                        fontSize: 40,
                        color: Color(0xfff6f6f6),
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'beranda',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xfff6f6f6),
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    width: 59,
                  ),
                  Text(
                    'Tentang Kami',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xfff6f6f6),
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    width: 59,
                  ),
                  Text(
                    'Menu',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xfff6f6f6),
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    width: 59,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xffC76100)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xfff6f6f6),
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  )
                ],
              ),
            ),
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
          children: [LandingPage(), AboutPage(), MenuPage(), CtaPage()],
        ),
      ),
    );
  }
}
