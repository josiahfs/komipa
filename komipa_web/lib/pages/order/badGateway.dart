import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komipa_web/pages/home.dart';
import 'package:komipa_web/widget/navbar.dart';

class BadGateway extends StatelessWidget {
  const BadGateway({super.key});

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
        appBar:
            PreferredSize(preferredSize: Size.fromHeight(50), child: NavBar()),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset('assets/404.png'),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                        child: Text(
                      '404',
                      style: GoogleFonts.inter(
                          fontSize: 96,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
                    Text(
                      'Halaman tidak dapat',
                      style: GoogleFonts.inter(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'ditemukan',
                      style: GoogleFonts.inter(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
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
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
