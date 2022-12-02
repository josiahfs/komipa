import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komipa_web/pages/order/confirm.dart';
import 'package:komipa_web/pages/order/final_confirm.dart';
import 'package:komipa_web/widget/navbar.dart';
import 'package:komipa_web/widget/progress.dart';
import 'package:komipa_web/widget/payment-choice.dart';

List<Widget> paymentChoice = [
  PaymentChoice(
    name: 'OVO',
    desc: 'Anda akan dialihkan ke aplikasi untuk membayar',
    // value: 0,
  ),
  PaymentChoice(
    name: 'Gopay',
    desc: 'Anda akan dialihkan ke aplikasi untuk membayar',
    // value: 1,
  ),
  PaymentChoice(
    name: 'Dana',
    desc: 'Anda akan dialihkan ke aplikasi untuk membayar',
    // value: 2,
  ),
  PaymentChoice(
    name: 'Bayar Nanti',
    desc: 'Bayar nanti pada waktu yang telah dipesan.        ',
    // value: 3,
  ),
];

class PaymentPage extends StatefulWidget {
  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  late int selectedRadio;
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;

    final sw = MediaQuery.of(context).size.width;
    final sh = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(50), child: NavBar()),
      body: Container(
        width: sw,
        height: sh,
        color: Color(0xffF5F5F5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Pembayaran',
              style: GoogleFonts.inter(
                  color: Color(0xffA65100),
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            StepProgressView(
              color: Color(0xffC76100),
              curStep: 3,
              width: sw * 0.6,
              titles: ['Kursi', 'Menu', 'Konfirmasi', 'Pembayaran'],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 570,
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color(0xffC76100),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 45.0, vertical: 30.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Cara Pembayaran',
                            style: GoogleFonts.inter(
                                color: Color(0xffC76100),
                                fontSize: 32,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Rp 61.000,00',
                            style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: 32,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Container(
                            width: 530,
                            height: 280,
                            // color: Colors.green,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    GFRadio(
                                      inactiveBorderColor: Color(0xffC76100),
                                      toggleable: true,
                                      activeBorderColor: Color(0xffC76100),
                                      radioColor: Color(0xffC76100),
                                      value: 0,
                                      groupValue: selectedRadio,
                                      onChanged: (value) {
                                        setSelectedRadio(value);
                                      },
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    paymentChoice[0]
                                  ],
                                ),
                                Row(
                                  children: [
                                    GFRadio(
                                      inactiveBorderColor: Color(0xffC76100),
                                      toggleable: true,
                                      activeBorderColor: Color(0xffC76100),
                                      radioColor: Color(0xffC76100),
                                      value: 1,
                                      groupValue: selectedRadio,
                                      onChanged: (value) {
                                        setSelectedRadio(value);
                                      },
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    paymentChoice[1]
                                  ],
                                ),
                                Row(
                                  children: [
                                    GFRadio(
                                      inactiveBorderColor: Color(0xffC76100),
                                      toggleable: true,
                                      activeBorderColor: Color(0xffC76100),
                                      radioColor: Color(0xffC76100),
                                      value: 2,
                                      groupValue: selectedRadio,
                                      onChanged: (value) {
                                        setSelectedRadio(value);
                                      },
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    paymentChoice[2]
                                  ],
                                ),
                                Row(
                                  children: [
                                    GFRadio(
                                      inactiveBorderColor: Color(0xffC76100),
                                      toggleable: true,
                                      activeBorderColor: Color(0xffC76100),
                                      radioColor: Color(0xffC76100),
                                      value: 3,
                                      groupValue: selectedRadio,
                                      onChanged: (value) {
                                        setSelectedRadio(value);
                                      },
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    paymentChoice[3]
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 220),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 220,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13.0),
                              side: BorderSide(color: Color(0xffC76100))),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        child: Text(
                          'Kembali',
                          style: GoogleFonts.inter(
                            fontSize: 20,
                            color: Color(0xffC76100),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      onPressed: () {
                        Get.off(ConfirmPage(), arguments: data);
                      },
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    width: 220,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xffC76100)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13.0),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        child: Text(
                          'Konfirmasi',
                          style: GoogleFonts.inter(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      onPressed: () {
                        Get.off(FinalConfirmation(), arguments: data);
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
