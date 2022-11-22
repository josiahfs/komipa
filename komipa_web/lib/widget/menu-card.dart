import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuCard extends StatelessWidget {
  String image;
  String name;
  String price;

  MenuCard({required this.image, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 231,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          // color: Colors.white,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.3],
            colors: [
              Color(0xffDA9655).withOpacity(0.1),
              Color(0xffF6F6F6),
            ],
          )),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Image.asset(
                image,
                height: 120,
                width: 170,
              ),
            ),
            Container(
              height: 111,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Flexible(
                      child: Text(
                        name,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40.0),
                    child: Text(
                      'Rp.$price',
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffC76100),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}
