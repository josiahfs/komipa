import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentChoice extends StatelessWidget {
  String name;

  PaymentChoice({required this.name});
  int groupValue = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Container(
            width: 370,
            height: 50,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xffD9D9D9),
                ),
              ),
            ),
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              GFRadio(
                value: 0,
                groupValue: groupValue,
                onChanged: (value) {},
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Anda akan dialihkan ke aplikasi untuk membayar',
                    style: GoogleFonts.inter(
                        color: Color(0xffA65100),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                width: 8,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
