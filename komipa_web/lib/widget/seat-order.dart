import 'package:book_my_seat/book_my_seat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:komipa_web/pages/order/seats.dart';

class SeatOrder extends StatefulWidget {
  @override
  State<SeatOrder> createState() => _SeatOrderState();
}

class _SeatOrderState extends State<SeatOrder> {
  Set<SeatNumber> selectedSeats = Set();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          child: Image.asset('assets/seat/sign.png'),
          bottom: 80,
          left: 60,
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
                    // ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    // ScaffoldMessenger.of(context).showSnackBar(
                    //   SnackBar(
                    //     content: seatState == SeatState.selected
                    //         ? Text("Kursi $rowI$colI terpilih")
                    //         : Text("Kursi $rowI$colI dihapus"),
                    //   ),
                    // );
                    if (seatState == SeatState.selected) {
                      selectedSeats.add(SeatNumber(rowI: rowI, colI: colI));
                      setState(() {});
                    } else {
                      selectedSeats.remove(SeatNumber(rowI: rowI, colI: colI));
                      setState(() {});
                    }
                  },
                  stateModel: const SeatLayoutStateModel(
                    pathDisabledSeat: 'assets/seat/disabled.svg',
                    pathSelectedSeat: 'assets/seat/selected.svg',
                    pathSoldSeat: 'assets/seat/disabled.svg',
                    pathUnSelectedSeat: 'assets/seat/unselected.svg',
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
                    ],
                  ),
                ),
              ),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     setState(() {});
            //   },
            //   child: const Text('Show my selected seat numbers'),
            //   style: ButtonStyle(
            //     backgroundColor: MaterialStateProperty.resolveWith(
            //         (states) => const Color(0xFFfc4c4e)),
            //   ),
            // ),
            const SizedBox(height: 12),
            Text(selectedSeats.join(" , "))
          ],
        ),
      ],
    );
  }
}

class SeatNumber {
  int rowI;
  int colI;

  SeatNumber({required this.rowI, required this.colI});

  @override
  bool operator ==(Object other) {
    return rowI == (other as SeatNumber).rowI &&
        colI == (other as SeatNumber).colI;
  }

  @override
  int get hashCode => rowI.hashCode;

  @override
  var rowName = '';
  var colName = '';
  String toString() {
    if (rowI == 0) {
      rowName = 'A';
    } else if (rowI == 1) {
      rowName = 'B';
    } else if (rowI == 3) {
      rowName = 'C';
    } else if (rowI == 4) {
      rowName = 'D';
    } else if (rowI == 6) {
      rowName = 'E';
    } else if (rowI == 7) {
      rowName = 'F';
    } else if (rowI == 8) {
      rowName = 'G';
    } else if (rowI == 10) {
      rowName = 'H';
    } else if (rowI == 11) {
      rowName = 'I';
    }
    if (colI < 2) {
      colName = (colI + 1).toString();
    } else if (colI < 5) {
      colName = (colI - 1).toString();
    } else if (colI < 8) {
      colName = (colI - 1).toString();
    } else if (colI < 11) {
      colName = (colI - 2).toString();
    } else if (colI < 14) {
      colName = (colI - 3).toString();
    }
    return '$rowName$colName';
  }
}
