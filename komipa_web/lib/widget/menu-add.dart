import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

List makanName = [
  'Ayam Geprek Original',
  'Onigiri Tuna Mayo',
  'Mie Goreng Seafood',
  'Nasi Bakar',
  'Ayam Geprek Keju',
  'French Fries',
  'Ayam Geprek Original',
  'Onigiri Tuna Mayo',
  'Mie Goreng Seafood',
  'Nasi Bakar',
  'Ayam Geprek Keju',
  'French Fries',
];
List makanPrice = [
  13000,
  10000,
  18000,
  10000,
  15000,
  13000,
  13000,
  10000,
  18000,
  10000,
  15000,
  13000,
];
List makanImg = [
  'assets/menu/makan1.png',
  'assets/menu/makan2.png',
  'assets/menu/makan3.png',
  'assets/menu/makan4.png',
  'assets/menu/makan5.png',
  'assets/menu/makan6.png',
  'assets/menu/makan1.png',
  'assets/menu/makan2.png',
  'assets/menu/makan3.png',
  'assets/menu/makan4.png',
  'assets/menu/makan5.png',
  'assets/menu/makan6.png',
];
List minumName = [
  'Es Teh',
  'Kopi Panas',
  'Es Coklat Susu',
  'Es Jeruk',
  'Matcha Latte',
  'Es Kopi Susu',
  'Es Americano',
  'Es Jeruk',
  'Matcha Latte',
  'Es Kopi Susu',
];
List minumPrice = [
  5000,
  10000,
  7000,
  8000,
  15000,
  15000,
  12000,
  8000,
  15000,
  15000,
];
List minumImg = [
  'assets/menu/minum1.png',
  'assets/menu/minum5.png',
  'assets/menu/minum2.png',
  'assets/menu/minum3.png',
  'assets/menu/minum4.png',
  'assets/menu/minum5.png',
  'assets/menu/minum6.png',
  'assets/menu/minum3.png',
  'assets/menu/minum4.png',
  'assets/menu/minum5.png',
];

class MenuAdd extends StatefulWidget {
  String name;
  int price;
  String img;

  MenuAdd({required this.name, required this.price, required this.img});

  @override
  State<MenuAdd> createState() => _MenuAddState();
}

class _MenuAddState extends State<MenuAdd> {
  Set<SelectedMenu> selectedMenu = Set();

  void addMenu() {
    selectedMenu.add(SelectedMenu(name: widget.name, price: widget.price));
  }

  void removeMenu() {
    selectedMenu.remove(SelectedMenu(name: widget.name, price: widget.price));
  }

  final oCcy = new NumberFormat("#,##0.00", "en_US");
  int amount = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        width: 300,
        height: 70,
        decoration: BoxDecoration(
          color: Color(0xffF5F5F5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
              child: Image.asset(
                widget.img,
                width: 45,
                height: 45,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 130,
                  child: Flexible(
                    child: Text(
                      widget.name,
                      style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Text(
                  'Rp.${oCcy.format(widget.price)}',
                  style: GoogleFonts.inter(
                      color: Color(0xffA65100),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Spacer(),
            Container(
              width: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      child: Text(
                        '-',
                        style: GoogleFonts.inter(
                            color: Color(0xffd9d9d9),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        setState(() {
                          if (amount == 1) {
                            removeMenu();
                          }
                          amount > 0 ? amount-- : amount;
                        });
                      }),
                  Text(
                    amount.toString(),
                    style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                  InkWell(
                    child: Text(
                      '+',
                      style: GoogleFonts.inter(
                          color: Color(0xffd9d9d9),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      setState(() {
                        addMenu();
                        amount++;
                      });
                    },
                  ),
                  // Text(selectedMenu.toString())
                ],
              ),
            ),
            SizedBox(
              width: 8,
            ),
          ]),
        ),
      ),
    );
  }
}

class SelectedMenu {
  String name;
  int price;

  SelectedMenu({required this.name, required this.price});

  @override
  bool operator ==(Object other) {
    return name == (other as SelectedMenu).name && price == (other).price;
  }

  @override
  int get hashCode => name.hashCode;

  @override
  String toString() {
    return '$name,$price';
  }
}
