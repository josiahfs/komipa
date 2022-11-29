import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

List makanName = [
  'Nasi Ayam',
  'Onigiri Tuna Mayo',
  'Ayam Geprek Sambal Matah',
  'Kopi Panas',
  'French Fries',
  'French Fries',
  'French Fries',
  'French Fries',
];

List makanPrice = [
  12000,
  10000,
  10000,
  10000,
  10000,
  10000,
  10000,
  10000,
];

class MenuAdd extends StatefulWidget {
  String name;
  int price;

  MenuAdd({
    required this.name,
    required this.price,
  });

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
                'assets/menu/makan2.png',
                width: 30,
                height: 30,
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
