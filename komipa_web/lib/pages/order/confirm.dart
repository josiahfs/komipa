import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komipa_web/pages/order/menu_order.dart';
import 'package:komipa_web/pages/order/payment.dart';
import 'package:komipa_web/widget/navbar.dart';
import 'package:komipa_web/widget/progress.dart';
import 'package:komipa_web/widget/menu-list.dart';

class ConfirmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    var seats = data[0];
    var session = data[1];
    var duration = data[2];
    final sw = MediaQuery.of(context).size.width;
    final sh = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(50), child: NavBar()),
      body: Container(
        width: sw,
        height: sh,
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Konfirmasi Pesanan',
              style: GoogleFonts.inter(
                  color: Color(0xffA65100),
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            StepProgressView(
              color: Color(0xffC76100),
              curStep: 2,
              width: sw * 0.6,
              titles: ['Kursi', 'Menu', 'Konfirmasi', ''],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 1000,
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color(0xffC76100),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        width: 345,
                        height: 460,
                        child: Padding(
                          padding: EdgeInsets.all(30),
                          child: Column(children: [
                            Text(
                              'Pesanan',
                              style: GoogleFonts.inter(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffC76100),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 300,
                              child: ListView(
                                children: [
                                  MenuList(
                                    name: 'Nasi Ayam',
                                    price: '12.000,00',
                                    amount: 1,
                                  ),
                                  MenuList(
                                    name: 'Onigiri Tuna Mayo',
                                    price: '10.000,00',
                                    amount: 1,
                                  ),
                                  MenuList(
                                    name: 'Es Kopi',
                                    price: '10.000,00',
                                    amount: 1,
                                  ),
                                  MenuList(
                                    name: 'Kopi Panas',
                                    price: '10.000,00',
                                    amount: 1,
                                  ),
                                  MenuList(
                                    name: 'French Fries',
                                    price: '10.000,00',
                                    amount: 1,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Spacer(),
                                Text(
                                  'Rp52.000,00',
                                  style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ]),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        width: 255,
                        height: 340,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 60.0, vertical: 30.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Waktu Sesi',
                                    style: GoogleFonts.inter(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffC76100),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    session,
                                    style: GoogleFonts.inter(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Image.asset('assets/line.png'),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Durasi (jam)',
                                    style: GoogleFonts.inter(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffC76100),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    duration.toString(),
                                    style: GoogleFonts.inter(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Image.asset('assets/line.png'),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Pilihan Kursi',
                                    style: GoogleFonts.inter(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffC76100),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    seats.join(","),
                                    style: GoogleFonts.inter(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Image.asset('assets/line.png'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        width: 315,
                        height: 140,
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Catatan',
                                  style: GoogleFonts.inter(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffC76100),
                                  ),
                                ),
                                Container(
                                  height: 36,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 1,
                                          color: Color(0xffD0D4D9),
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 1,
                                          color: Color(0xffD0D4D9),
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 220),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 220,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13.0),
                              side: BorderSide(color: Color(0xffC76100))),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        child: Text(
                          'Kembali',
                          style: GoogleFonts.inter(
                            fontSize: 20,
                            color: Color(0xffC76100),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      onPressed: () {
                        Get.off(MenuOrder(), arguments: data);
                      },
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    width: 220,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xffC76100)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
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
                      onPressed: () {
                        Get.off(PaymentPage(), arguments: data);
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
