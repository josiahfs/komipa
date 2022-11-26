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
                                  desc: 'dfajdfladjflajlfaf',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan1.png',
                                  name: 'Ayam Geprek Original',
                                  price: '13.000',
                                  desc: 'dfajdfladjflajlfaf',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan1.png',
                                  name: 'Ayam Geprek Original',
                                  price: '13.000',
                                  desc: 'dfajdfladjflajlfaf',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan1.png',
                                  name: 'Ayam Geprek Original',
                                  price: '13.000',
                                  desc: 'dfajdfladjflajlfaf',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan1.png',
                                  name: 'Ayam Geprek Original',
                                  price: '13.000',
                                  desc: 'dfajdfladjflajlfaf',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan1.png',
                                  name: 'Ayam Geprek Original',
                                  price: '13.000',
                                  desc: 'dfajdfladjflajlfaf',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan1.png',
                                  name: 'Ayam Geprek Original',
                                  price: '13.000',
                                  desc: 'dfajdfladjflajlfaf',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan1.png',
                                  name: 'Ayam Geprek Original',
                                  price: '13.000',
                                  desc: 'dfajdfladjflajlfaf',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan1.png',
                                  name: 'Ayam Geprek Original',
                                  price: '13.000',
                                  desc: 'dfajdfladjflajlfaf',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan1.png',
                                  name: 'Ayam Geprek Original',
                                  price: '13.000',
                                  desc: 'dfajdfladjflajlfaf',
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
                                  image: 'assets/menu/makan1.png',
                                  name: 'Ayam Geprek Original',
                                  price: '13.000',
                                  desc: 'dfajdfladjflajlfaf',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan1.png',
                                  name: 'Ayam Geprek Original',
                                  price: '13.000',
                                  desc: 'dfajdfladjflajlfaf',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan1.png',
                                  name: 'Ayam Geprek Original',
                                  price: '13.000',
                                  desc: 'dfajdfladjflajlfaf',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan1.png',
                                  name: 'Ayam Geprek Original',
                                  price: '13.000',
                                  desc: 'dfajdfladjflajlfaf',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan1.png',
                                  name: 'Ayam Geprek Original',
                                  price: '13.000',
                                  desc: 'dfajdfladjflajlfaf',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan1.png',
                                  name: 'Ayam Geprek Original',
                                  price: '13.000',
                                  desc: 'dfajdfladjflajlfaf',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan1.png',
                                  name: 'Ayam Geprek Original',
                                  price: '13.000',
                                  desc: 'dfajdfladjflajlfaf',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan1.png',
                                  name: 'Ayam Geprek Original',
                                  price: '13.000',
                                  desc: 'dfajdfladjflajlfaf',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan1.png',
                                  name: 'Ayam Geprek Original',
                                  price: '13.000',
                                  desc: 'dfajdfladjflajlfaf',
                                ),
                                MenuGrid(
                                  image: 'assets/menu/makan1.png',
                                  name: 'Ayam Geprek Original',
                                  price: '13.000',
                                  desc: 'dfajdfladjflajlfaf',
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
