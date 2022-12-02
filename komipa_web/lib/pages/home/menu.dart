import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komipa_web/widget/menu-card.dart';

class MenuRecom extends StatefulWidget {
  @override
  State<MenuRecom> createState() => _MenuRecomState();
}

class _MenuRecomState extends State<MenuRecom> {
  bool isMakanSelected = true;
  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    final sh = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/orange-home.png'), fit: BoxFit.cover),
      ),
      width: sw,
      height: sh,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 100),
        child: Column(children: [
          Text(
            'Menu Andalan',
            style: GoogleFonts.inter(
                fontSize: 60, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isMakanSelected
                          ? isMakanSelected
                          : isMakanSelected = true;
                    });
                  },
                  child: Column(
                    children: [
                      Text(
                        'Makanan',
                        style: GoogleFonts.inter(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      isMakanSelected
                          ? Image.asset('assets/line2.png')
                          : Container()
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 142,
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isMakanSelected
                          ? isMakanSelected = false
                          : isMakanSelected = false;
                    });
                  },
                  child: Column(
                    children: [
                      Text(
                        'Minuman',
                        style: GoogleFonts.inter(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      isMakanSelected
                          ? Container()
                          : Image.asset('assets/line2.png')
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          isMakanSelected
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MenuCard(
                      image: 'assets/menu/makan1.png',
                      name: 'Ayam Geprek Original',
                      price: '13.000',
                      desc: 'nasi, ayam krispi,sambal bawang',
                    ),
                    MenuCard(
                      image: 'assets/menu/makan2.png',
                      name: 'Onigiri',
                      price: '10.000',
                      desc: 'ini deskripsi makanan',
                    ),
                    MenuCard(
                      image: 'assets/menu/makan3.png',
                      name: 'Mie Goreng Seafood',
                      price: '18.000',
                      desc: 'ini deskripsi makanan',
                    ),
                    MenuCard(
                      image: 'assets/menu/makan4.png',
                      name: 'Nasi Bakar',
                      price: '10.000',
                      desc: 'ini deskripsi makanan',
                    ),
                    MenuCard(
                      image: 'assets/menu/makan5.png',
                      name: 'Ayam Geprek Keju',
                      price: '15.000',
                      desc: 'ini deskripsi makanan',
                    ),
                    MenuCard(
                      image: 'assets/menu/makan6.png',
                      name: 'French Fries',
                      price: '13.000',
                      desc: 'ini deskripsi makanan',
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MenuCard(
                      image: 'assets/menu/minum1.png',
                      name: 'Es Teh',
                      price: '5.000',
                      desc: 'ini deskripsi minuman',
                    ),
                    MenuCard(
                      image: 'assets/menu/minum2.png',
                      name: 'Es Coklat Susu',
                      price: '7.000',
                      desc: 'ini deskripsi minuman',
                    ),
                    MenuCard(
                      image: 'assets/menu/minum3.png',
                      name: 'Es Jeruk',
                      price: '8.000',
                      desc: 'ini deskripsi minuman',
                    ),
                    MenuCard(
                      image: 'assets/menu/minum4.png',
                      name: 'Matcha Latte',
                      price: '15.000',
                      desc: 'ini deskripsi minuman',
                    ),
                    MenuCard(
                      image: 'assets/menu/minum5.png',
                      name: 'Es Kopi Susu',
                      price: '15.000',
                      desc: 'ini deskripsi minuman',
                    ),
                    MenuCard(
                      image: 'assets/menu/minum6.png',
                      name: 'Es Americano',
                      price: '12.000',
                      desc: 'ini deskripsi minuman',
                    ),
                  ],
                )
        ]),
      ),
    );
  }
}
