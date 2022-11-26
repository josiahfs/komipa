import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komipa_web/pages/home.dart';
import 'package:komipa_web/widget/menu-card.dart';
import 'package:komipa_web/widget/menu-grid.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    final sh = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AdaptiveNavBar(
        backgroundColor: Color(0xffC76100),
        screenWidth: sw,
        title: Text(
          "KOMIPA",
          style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: false,
        navBarItems: [
          NavBarItem(
            text: "Beranda",
            onTap: () {
              Get.offAll(HomePage());
            },
          ),
          NavBarItem(
            text: "Tentang Kami",
            onTap: () {
              Navigator.pushNamed(context, "routeName");
            },
          ),
          NavBarItem(
            text: "Menu",
            onTap: () {
              Navigator.pushNamed(context, "routeName");
            },
          ),
          NavBarItem(
            text: "Login",
            onTap: () {
              // Navigator.pushReplacement(context,
              //     MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ],
      ),
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
