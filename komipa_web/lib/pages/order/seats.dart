import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komipa_web/pages/stepper.dart';

class SearchSeat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    final sh = MediaQuery.of(context).size.height;
    return
        // backgroundColor: Colors.transparent,
        // appBar: AdaptiveNavBar(
        //   backgroundColor: Color(0xffC76100),
        //   screenWidth: sw,
        //   title: Text(
        //     "KOMIPA",
        //     style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 24),
        //   ),
        //   centerTitle: false,
        //   navBarItems: [
        //     NavBarItem(
        //       text: "Beranda",
        //       onTap: () {
        //         Navigator.pushNamed(context, "routeName");
        //       },
        //     ),
        //     NavBarItem(
        //       text: "Tentang Kami",
        //       onTap: () {
        //         Navigator.pushNamed(context, "routeName");
        //       },
        //     ),
        //     NavBarItem(
        //       text: "Menu",
        //       onTap: () {
        //         Navigator.pushNamed(context, "routeName");
        //       },
        //     ),
        //     NavBarItem(
        //       text: "Login",
        //       onTap: () {
        //         Navigator.pushNamed(context, "routeName");
        //       },
        //     ),
        //   ],
        // ),
        Container(
      width: sw,
      height: sh * 0.8,
      color: Colors.transparent,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          height: 20,
        ),
        Text(
          'Pilih Kursi',
          style: GoogleFonts.inter(
              color: Color(0xffA65100),
              fontSize: 40,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  width: 470,
                  height: 470,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  width: 470,
                  height: 90,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 40),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Colors.black),
                                  height: 25,
                                  width: 25,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  'Tersedia',
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Colors.black),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Color(0xffd9d9d9),
                                  ),
                                  height: 25,
                                  width: 25,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  'Tidak Tersedia',
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Colors.black),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Color(0xffF5B309),
                                  ),
                                  height: 25,
                                  width: 25,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  'Pilihanmu',
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                            '*Maksimal Pemesanan Kursi dalam 1 Pesanan hanya 6 kursi')
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  width: 280,
                  height: 240,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 24, horizontal: 60),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Pilih waktu sesi',
                                style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffC76100),
                                ),
                              ),
                              TextFormField(),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: [
                              Text(
                                'Pilih durasi (jam)',
                                style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffC76100),
                                ),
                              ),
                              TextFormField(),
                            ],
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  height: 44,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  width: 280,
                  height: 160,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 24, horizontal: 24),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Kursi terpilih',
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffC76100),
                            ),
                          ),
                          Text(
                            'A1, A2',
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xffC76100)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13.0),
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 8),
                                child: Text(
                                  'Konfirmasi',
                                  style: GoogleFonts.inter(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              onPressed: () {},
                            ),
                          )
                        ]),
                  ),
                )
              ],
            )
          ],
        ),
      ]),
    );
  }
}
