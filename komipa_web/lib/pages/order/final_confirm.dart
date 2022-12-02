import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komipa_web/pages/home.dart';
import 'package:komipa_web/widget/navbar.dart';

class FinalConfirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    final sh = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(50), child: NavBar()),
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
                  'Sipp.. pesananmu ',
                  style: GoogleFonts.inter(fontSize: 40),
                ),
                Text(
                  'sudah terkonfirmasi!',
                  style: GoogleFonts.inter(fontSize: 40),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Invoice telah dikirim ke email anda.',
                  style: GoogleFonts.inter(
                      fontSize: 32, fontWeight: FontWeight.w300),
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
