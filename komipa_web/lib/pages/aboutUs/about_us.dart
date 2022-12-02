import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komipa_web/widget/menu-card.dart';
import 'package:komipa_web/widget/navbar.dart';

class AboutUs extends StatefulWidget {
  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  bool isMakanSelected = true;
  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    final sh = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(50), child: NavBar()),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/orange-home.png'), fit: BoxFit.cover),
        ),
        width: sw,
        height: sh,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
          child: Column(children: [
            Text(
              'Tentang Kami',
              style: GoogleFonts.inter(
                  fontSize: 60,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Image.asset('assets/about.png'),
          ]),
        ),
      ),
    );
  }
}
