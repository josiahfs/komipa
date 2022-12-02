import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    final sh = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/apa-itu.png'), fit: BoxFit.fill),
      ),
      width: sw,
      height: sh,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 180),
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
                Flexible(
                  child: Text(
                    'KOMIPA adalah kantin yang berada di lantai dasar gedung S1 Fakultas\nMIPA Universitas Gadjah Mada. KOMIPA cocok untuk bersantai,\nberkumpul, maupun berdiskusi.',
                    style: GoogleFonts.inter(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Banyak pilihan menu yang terjangkau membuat KOMIPA selalu ramai\npengunjung. Namun, jangan khawatir karena kini KOMIPA sudah hadir\ndengan fitur reservasi! Pesan tempat duduk, makanan, dan minuman kini\njauh lebih mudah.',
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
    );
  }
}
