import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komipa_web/widget/menu-grid.dart';
import 'package:komipa_web/widget/navbar.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    final sh = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(50), child: NavBar()),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/orange-home.png'), fit: BoxFit.cover),
        ),
        width: sw,
        height: sh,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
          child: Column(children: [
            Text(
              'Menu',
              style: GoogleFonts.inter(
                  fontSize: 60,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      'Makanan',
                      style: GoogleFonts.inter(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                      width: sw * 0.4,
                      height: sh * 0.6,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: CustomScrollView(
                          slivers: [
                            SliverGrid.count(
                              crossAxisSpacing: 30,
                              mainAxisSpacing: 20,
                              crossAxisCount: 3,
                              children: [
                                MenuGrid(
                                  image: 'assets/menu/makan1.png',
                                  name: 'Ayam Geprek Original',
                                  price: '13.000',
                                  desc: 'nasi, ayam krispi,sambal bawang',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan2.png',
                                  name: 'Onigiri',
                                  price: '10.000',
                                  desc: 'ini deskripsi makanan',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan3.png',
                                  name: 'Mie Goreng Seafood',
                                  price: '18.000',
                                  desc: 'ini deskripsi makanan',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan4.png',
                                  name: 'Nasi Bakar',
                                  price: '10.000',
                                  desc: 'ini deskripsi makanan',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan5.png',
                                  name: 'Ayam Geprek Keju',
                                  price: '15.000',
                                  desc: 'ini deskripsi makanan',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan6.png',
                                  name: 'French Fries',
                                  price: '13.000',
                                  desc: 'ini deskripsi makanan',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan3.png',
                                  name: 'Mie Goreng Seafood',
                                  price: '18.000',
                                  desc: 'ini deskripsi makanan',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan6.png',
                                  name: 'French Fries',
                                  price: '13.000',
                                  desc: 'ini deskripsi makanan',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan1.png',
                                  name: 'Ayam Geprek Original',
                                  price: '13.000',
                                  desc: 'nasi, ayam krispi,sambal bawang',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan4.png',
                                  name: 'Nasi Bakar',
                                  price: '10.000',
                                  desc: 'ini deskripsi makanan',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan5.png',
                                  name: 'Ayam Geprek Keju',
                                  price: '15.000',
                                  desc: 'ini deskripsi makanan',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan2.png',
                                  name: 'Onigiri',
                                  price: '10.000',
                                  desc: 'ini deskripsi makanan',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    Text(
                      'Minuman',
                      style: GoogleFonts.inter(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                      width: sw * 0.4,
                      height: sh * 0.6,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: CustomScrollView(
                          slivers: [
                            SliverGrid.count(
                              crossAxisSpacing: 30,
                              mainAxisSpacing: 20,
                              crossAxisCount: 3,
                              children: [
                                MenuGrid(
                                  image: 'assets/menu/minum1.png',
                                  name: 'Es Teh',
                                  price: '5.000',
                                  desc: 'ini deskripsi minuman',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/minum2.png',
                                  name: 'Es Coklat Susu',
                                  price: '7.000',
                                  desc: 'ini deskripsi minuman',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/minum3.png',
                                  name: 'Es Jeruk',
                                  price: '8.000',
                                  desc: 'ini deskripsi minuman',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/minum4.png',
                                  name: 'Matcha Latte',
                                  price: '15.000',
                                  desc: 'ini deskripsi minuman',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/minum5.png',
                                  name: 'Es Kopi Susu',
                                  price: '15.000',
                                  desc: 'ini deskripsi minuman',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/minum6.png',
                                  name: 'Es Americano',
                                  price: '12.000',
                                  desc: 'ini deskripsi minuman',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/minum3.png',
                                  name: 'Es Jeruk',
                                  price: '8.000',
                                  desc: 'ini deskripsi minuman',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/minum1.png',
                                  name: 'Es Teh',
                                  price: '5.000',
                                  desc: 'ini deskripsi minuman',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/minum2.png',
                                  name: 'Es Coklat Susu',
                                  price: '7.000',
                                  desc: 'ini deskripsi minuman',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/minum5.png',
                                  name: 'Es Kopi Susu',
                                  price: '15.000',
                                  desc: 'ini deskripsi minuman',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/minum6.png',
                                  name: 'Es Americano',
                                  price: '12.000',
                                  desc: 'ini deskripsi minuman',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/minum4.png',
                                  name: 'Matcha Latte',
                                  price: '15.000',
                                  desc: 'ini deskripsi minuman',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
