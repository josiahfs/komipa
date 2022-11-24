import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komipa_web/pages/LoginPage/Register.dart';
import 'package:komipa_web/pages/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _passwordVisible = false;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  loginSubmit() async {
    try {
      await _firebaseAuth
          .signInWithEmailAndPassword(
              email: _emailController.text, password: _passwordController.text)
          .then((value) => Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => HomePage())));
    } catch (e) {
      print(e);
      SnackBar(content: Text(e.toString()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/login-bg.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 119.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  // Container(
                  //   child: ElevatedButton(
                  //     style: ButtonStyle(
                  //       backgroundColor:
                  //           MaterialStateProperty.all(Colors.transparent),
                  //       shape:
                  //           MaterialStateProperty.all<RoundedRectangleBorder>(
                  //         RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.circular(18.0),
                  //             side: BorderSide(color: Colors.transparent)),
                  //       ),
                  //     ),
                  //     child: Padding(
                  //       padding: const EdgeInsets.symmetric(
                  //           horizontal: 20, vertical: 12),
                  //       child: Text(
                  //         'Kembali',
                  //         style: GoogleFonts.inter(
                  //           fontSize: 14,
                  //           color: Colors.white,
                  //           fontWeight: FontWeight.w500,
                  //         ),
                  //       ),
                  //     ),
                  //     onPressed: () {
                  //     },
                  //   ),
                  // ),
                  SizedBox(height: 60),
                  Text(
                    'K O',
                    style: GoogleFonts.inter(
                        fontSize: 180,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Text(
                    'M I',
                    style: GoogleFonts.inter(
                        fontSize: 180,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Text(
                    'P A .',
                    style: GoogleFonts.inter(
                        fontSize: 180,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width * 0.45,
              child: Padding(
                padding: const EdgeInsets.only(left: 118.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 150),
                    Text(
                      'Anda Lapar?',
                      style: GoogleFonts.inter(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffC76100),
                      ),
                    ),
                    Text(
                      'Jangan khawatir, KOMIPA ada untuk',
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff858585),
                      ),
                    ),
                    Text(
                      'membantumu. Yuk mulai!',
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff858585),
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 70,
                    ),
                    Container(
                      width: 457,
                      child: TextField(
                        controller: _emailController,
                        decoration:
                            new InputDecoration(hintText: 'Masukkan email'),
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 457,
                      child: TextField(
                        controller: _passwordController,
                        obscureText: !_passwordVisible,
                        // ignore: unnecessary_new
                        decoration: new InputDecoration(
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            icon: Icon(
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Color(0xff858585),
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Lupa Password',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              color: Color(0xff858585),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 112,
                    ),
                    Container(
                      height: 60,
                      width: 457,
                      decoration: BoxDecoration(
                          color: Color(0xffC76100),
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black54,
                                blurRadius: 20,
                                offset: Offset(5, 10),
                                spreadRadius: 0.1,
                                blurStyle: BlurStyle.normal)
                          ]),
                      child: TextButton(
                        onPressed: () {
                          loginSubmit();
                        },
                        child: Text(
                          "Login",
                          style: GoogleFonts.inter(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 12),
                        child: Row(
                          children: [
                            Text(
                              'Belum punya akun?',
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                color: Color(0xff858585),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegisterPage()));
                              },
                              child: Text(
                                'Buat disini',
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  color: Color(0xffC76100),
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
