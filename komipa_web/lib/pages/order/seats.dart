// ignore_for_file: prefer_const_constructors

import 'package:book_my_seat/book_my_seat.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komipa_web/pages/order/menu_order.dart';
import 'package:get/get.dart';
import 'package:komipa_web/widget/navbar.dart';
import 'package:komipa_web/widget/progress.dart';
import 'package:komipa_web/widget/seat-order.dart';

const List<String> list = <String>[
  '08.00-09.00',
  '09.00-10.00',
  '10.00-11.00',
  '11.00-12.00',
  '12.00-13.00',
  '13.00-14.00',
  '14.00-15.00',
  '15.00-16.00',
  '16.00-17.00'
];

class SearchSeat extends StatefulWidget {
  @override
  State<SearchSeat> createState() => _SearchSeatState();
}

class _SearchSeatState extends State<SearchSeat> {
  Set<SeatNumber> selectedSeats = Set();
  String dropdownValue = list.first;
  int duration = 0;
  int totalSeat = 0;

  @override
  Widget build(BuildContext context) {
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
          StepProgressView(
            color: Color(0xffC76100),
            curStep: 0,
            width: sw * 0.6,
            titles: ['Kursi', '', '', ''],
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
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          bottom: 80,
                          left: 60,
                          child: Image.asset('assets/seat/sign.png'),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            Flexible(
                              child: SizedBox(
                                width: 410,
                                height: 400,
                                child: SeatLayoutWidget(
                                  onSeatStateChanged: (rowI, colI, seatState) {
                                    if (seatState == SeatState.selected) {
                                      setState(() {
                                        totalSeat += 1;
                                      });
                                      selectedSeats.add(
                                          SeatNumber(rowI: rowI, colI: colI));
                                    } else {
                                      setState(() {
                                        totalSeat -= 1;
                                      });
                                      selectedSeats.remove(
                                          SeatNumber(rowI: rowI, colI: colI));
                                    }
                                  },
                                  stateModel: const SeatLayoutStateModel(
                                      pathDisabledSeat:
                                          'assets/seat/disabled.svg',
                                      pathSelectedSeat:
                                          'assets/seat/selected.svg',
                                      pathSoldSeat: 'assets/seat/disabled.svg',
                                      pathUnSelectedSeat:
                                          'assets/seat/unselected.svg',
                                      rows: 12,
                                      cols: 14,
                                      seatSvgSize: 29,
                                      currentSeatsState: [
                                        // row1
                                        [
                                          SeatState.unselected,
                                          SeatState.sold,
                                          SeatState.empty,
                                          SeatState.sold,
                                          SeatState.sold,
                                          SeatState.empty,
                                          SeatState.unselected,
                                          SeatState.unselected,
                                          SeatState.empty,
                                          SeatState.unselected,
                                          SeatState.unselected,
                                          SeatState.empty,
                                          SeatState.unselected,
                                          SeatState.unselected,
                                        ],
                                        // row2
                                        [
                                          SeatState.unselected,
                                          SeatState.sold,
                                          SeatState.empty,
                                          SeatState.sold,
                                          SeatState.sold,
                                          SeatState.empty,
                                          SeatState.unselected,
                                          SeatState.unselected,
                                          SeatState.empty,
                                          SeatState.unselected,
                                          SeatState.unselected,
                                          SeatState.empty,
                                          SeatState.unselected,
                                          SeatState.unselected,
                                        ],
                                        // row3
                                        [
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty
                                        ],
                                        // row4
                                        [
                                          SeatState.disabled,
                                          SeatState.disabled,
                                          SeatState.empty,
                                          SeatState.disabled,
                                          SeatState.disabled,
                                          SeatState.empty,
                                          SeatState.disabled,
                                          SeatState.disabled,
                                          SeatState.empty,
                                          SeatState.disabled,
                                          SeatState.disabled,
                                          SeatState.empty,
                                          SeatState.disabled,
                                          SeatState.disabled,
                                        ],
                                        // row5
                                        [
                                          SeatState.disabled,
                                          SeatState.disabled,
                                          SeatState.empty,
                                          SeatState.disabled,
                                          SeatState.disabled,
                                          SeatState.empty,
                                          SeatState.disabled,
                                          SeatState.disabled,
                                          SeatState.empty,
                                          SeatState.disabled,
                                          SeatState.disabled,
                                          SeatState.empty,
                                          SeatState.disabled,
                                          SeatState.disabled,
                                        ],
                                        // row6
                                        [
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty
                                        ],
                                        // row7
                                        [
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.disabled,
                                          SeatState.disabled,
                                          SeatState.empty,
                                          SeatState.unselected,
                                          SeatState.unselected,
                                          SeatState.empty,
                                          SeatState.disabled,
                                          SeatState.disabled,
                                        ],
                                        // row8
                                        [
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.disabled,
                                          SeatState.disabled,
                                          SeatState.empty,
                                          SeatState.unselected,
                                          SeatState.unselected,
                                          SeatState.empty,
                                          SeatState.disabled,
                                          SeatState.disabled,
                                        ],
                                        // row9
                                        [
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.disabled,
                                          SeatState.disabled,
                                          SeatState.empty,
                                          SeatState.unselected,
                                          SeatState.unselected,
                                          SeatState.empty,
                                          SeatState.disabled,
                                          SeatState.disabled,
                                        ],
                                        // row10
                                        [
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty
                                        ],
                                        // row11
                                        [
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.disabled,
                                          SeatState.disabled,
                                          SeatState.empty,
                                          SeatState.disabled,
                                          SeatState.disabled,
                                          SeatState.empty,
                                          SeatState.disabled,
                                          SeatState.disabled,
                                        ],
                                        // row12
                                        [
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.empty,
                                          SeatState.disabled,
                                          SeatState.disabled,
                                          SeatState.empty,
                                          SeatState.disabled,
                                          SeatState.disabled,
                                          SeatState.empty,
                                          SeatState.disabled,
                                          SeatState.disabled,
                                        ],
                                      ]),
                                ),
                              ),
                            ),
                            Text(totalSeat.toString())
                          ],
                        ),
                      ],
                    ),
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
                                DropdownButton(
                                  value: dropdownValue,
                                  onChanged: (String? value) {
                                    setState(() {
                                      dropdownValue = value!;
                                    });
                                  },
                                  items: list.map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: GoogleFonts.inter(
                                          fontSize: 18,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    );
                                  }).toList(),
                                )
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
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Color(0xffD9D9D9),
                                      ),
                                    ),
                                  ),
                                  width: 200,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        child: Text(
                                          '-',
                                          style: GoogleFonts.inter(
                                              color: Color(0xffd9d9d9d9),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        onTap: () {
                                          setState(() {
                                            duration > 0
                                                ? duration--
                                                : duration;
                                          });
                                        },
                                      ),
                                      Text(
                                        duration.toString(),
                                        style: GoogleFonts.inter(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      InkWell(
                                        child: Text(
                                          '+',
                                          style: GoogleFonts.inter(
                                              color: Color(0xffd9d9d9d9),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        onTap: () {
                                          setState(() {
                                            duration++;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
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
                            selectedSeats.isNotEmpty
                                ? Text(
                                    selectedSeats.join(','),
                                    style: GoogleFonts.inter(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  )
                                : Text(
                                    'Belum ada kursi',
                                    style: GoogleFonts.inter(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
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
                                onPressed: () {
                                  if (selectedSeats.isEmpty) {
                                    Get.snackbar(
                                        'Error', 'Belum ada kursi yang dipilih',
                                        snackPosition: SnackPosition.BOTTOM,
                                        colorText: Colors.white,
                                        backgroundColor: Colors.red);
                                  } else if (duration == 0) {
                                    Get.snackbar(
                                        'Error', 'Durasi pemesanan tidak valid',
                                        snackPosition: SnackPosition.BOTTOM,
                                        colorText: Colors.white,
                                        backgroundColor: Colors.red);
                                  } else {
                                    Get.off(
                                      MenuOrder(),
                                      arguments: [
                                        selectedSeats,
                                        dropdownValue,
                                        duration
                                      ],
                                    );
                                  }
                                },
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
      ),
    );
  }
}
