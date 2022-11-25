import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentChoice extends StatelessWidget {
  String name;
  String desc;

  PaymentChoice({required this.name, required this.desc});
  int groupValue = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [
          Container(
            width: 438,
            height: 50,
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              GFRadio(
                activeBorderColor: Color(0xffC76100),
                radioColor: Color(0xffC76100),
                value: 0,
                groupValue: groupValue,
                onChanged: (value) {},
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xffD9D9D9),
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      desc,
                      style: GoogleFonts.inter(
                          color: Color(0xffA65100),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
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
