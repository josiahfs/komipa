import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
    );
  }
}
