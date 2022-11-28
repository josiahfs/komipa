import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:komipa_web/pages/order/confirm.dart';
import 'package:komipa_web/pages/order/seat2.dart';
import 'package:komipa_web/pages/order/seats.dart';
import 'package:komipa_web/widget/menu-add.dart';
import 'package:komipa_web/widget/navbar.dart';
import 'package:komipa_web/widget/progress.dart';
import 'package:komipa_web/widget/menu-list.dart';

class MenuOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    // var seats = data[0];
    // var session = data[1];
    // var duration = data[2];
    var total = 0;
    final sw = MediaQuery.of(context).size.width;
    final sh = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(50), child: NavBar()),
      body: Container(
        width: sw,
        height: sh,
        color: Colors.transparent,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 24,
          ),
          Text(
            'Pilih Menu',
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
            curStep: 1,
            width: sw * 0.6,
            titles: ['Kursi', 'Menu', '', ''],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                width: sw * 0.24,
                height: sh * 0.7,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        'Makanan',
                        style: GoogleFonts.inter(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffC76100),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: sh * 0.59,
                        child: ListView(
                          children: [
                            MenuAdd(
                              name: 'Nasi Ayam',
                              price: '12.000,00',
                            ),
                            MenuAdd(
                              name: 'Onigiri Tuna Mayo',
                              price: '10.000,00',
                            ),
                            MenuAdd(
                              name: 'Ayam Geprek Sambal Matah',
                              price: '10.000,00',
                            ),
                            MenuAdd(
                              name: 'Kopi Panas',
                              price: '10.000,00',
                            ),
                            MenuAdd(
                              name: 'French Fries',
                              price: '10.000,00',
                            ),
                            MenuAdd(
                              name: 'French Fries',
                              price: '10.000,00',
                            ),
                            MenuAdd(
                              name: 'French Fries',
                              price: '10.000,00',
                            ),
                            MenuAdd(
                              name: 'French Fries',
                              price: '10.000,00',
                            ),
                            MenuAdd(
                              name: 'French Fries',
                              price: '10.000,00',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                width: sw * 0.24,
                height: sh * 0.7,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        'Minuman',
                        style: GoogleFonts.inter(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffC76100),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: sh * 0.59,
                        child: ListView(
                          children: [
                            MenuAdd(
                              name: 'Nasi Ayam',
                              price: '12.000,00',
                            ),
                            MenuAdd(
                              name: 'Onigiri Tuna Mayo',
                              price: '10.000,00',
                            ),
                            MenuAdd(
                              name: 'Es Kopi',
                              price: '10.000,00',
                            ),
                            MenuAdd(
                              name: 'Kopi Panas',
                              price: '10.000,00',
                            ),
                            MenuAdd(
                              name: 'French Fries',
                              price: '10.000,00',
                            ),
                            MenuAdd(
                              name: 'French Fries',
                              price: '10.000,00',
                            ),
                            MenuAdd(
                              name: 'French Fries',
                              price: '10.000,00',
                            ),
                            MenuAdd(
                              name: 'French Fries',
                              price: '10.000,00',
                            ),
                            MenuAdd(
                              name: 'French Fries',
                              price: '10.000,00',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    width: sw * 0.24,
                    height: sh * 0.36,
                    child: Padding(
                      padding: EdgeInsets.all(20),
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
                          height: sh * 0.2,
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
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: sw * 0.24,
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
                        Get.off(ConfirmPage(), arguments: data);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: sw * 0.24,
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
                        Get.off(Seat2(), arguments: data);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
