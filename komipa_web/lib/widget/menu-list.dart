import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuList extends StatelessWidget {
  String name;
  String price;
  int amount;

  MenuList({required this.name, required this.price, required this.amount});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffD9D9D9),
          ),
        ),
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: GoogleFonts.inter(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              'Rp.$price',
              style: GoogleFonts.inter(
                  color: Color(0xffA65100),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Spacer(),
        Text(
          amount.toString(),
          style: GoogleFonts.inter(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          width: 8,
        ),
      ]),
    );
  }
}
