import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuGrid extends StatefulWidget {
  String image;
  String name;
  String price;
  String desc;

  MenuGrid(
      {required this.image,
      required this.name,
      required this.price,
      required this.desc});
  @override
  State<MenuGrid> createState() => _MenuGridState();
}

class _MenuGridState extends State<MenuGrid> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: Container(
          width: 180,
          height: 231,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              (isHover)
                  ? BoxShadow(
                      color: Color(0xffDA9655),
                      spreadRadius: 10,
                      blurRadius: 7,
                    )
                  : BoxShadow(color: Color(0xffDA9655))
            ],
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.3],
              colors: [
                Color(0xffDA9655).withOpacity(0.1),
                Color(0xffF6F6F6),
              ],
            ),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              child: Image.asset(
                widget.image,
                height: 70,
                width: 120,
              ),
            ),
            Container(
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Flexible(
                      child: Text(
                        widget.name,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Spacer(),
                  isHover
                      ? Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Text(
                            widget.desc,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffC76100),
                            ),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Text(
                            'Rp.${widget.price}',
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffC76100),
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
    ;
  }
}
