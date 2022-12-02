import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:komipa_web/pages/LoginPage/login.dart';
import 'package:komipa_web/pages/home.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var _passwordVisible = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  registerSubmit() async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: _emailController.text.toString().trim(),
          password: _passwordController.text);

      addUserDetails(
        _nameController.text.trim(),
        int.parse(_phoneController.text.trim()),
        _emailController.text.trim(),
      );
    } catch (e) {
      print(e);
      SnackBar(content: Text(e.toString()));
    }
  }

  Future addUserDetails(String Nama, int Phone, String Email) async {
    await FirebaseFirestore.instance.collection('users').add({
      'Nama': Nama,
      'Phone': Phone,
      'Email': Email,
    });
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
                  SizedBox(height: 100),
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
                    Row(
                      children: [
                        Text(
                          'Anda Lapar?',
                          style: GoogleFonts.inter(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffC76100),
                          ),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        IconButton(
                          onPressed: (() {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          }),
                          icon: Icon(Icons.home),
                        ),
                      ],
                    ),
                    Text(
                      'Jangan khawatir, KOMIPA ada untuk',
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff858585),
                      ),
                    ),
                    Text(
                      'membantumu. Yuk mulai!',
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
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
                        controller: _nameController,
                        decoration: new InputDecoration(hintText: 'Nama'),
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 20,
                    ),

                    Container(
                      width: 457,
                      child: TextField(
                        controller: _phoneController,
                        decoration:
                            new InputDecoration(hintText: 'Nomor Whatsapp'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    Container(
                      width: 457,
                      child: TextField(
                        controller: _emailController,
                        decoration: new InputDecoration(hintText: 'Email'),
                      ),
                    ),
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
                      height: 80,
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
                          registerSubmit().then((value) => Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                                  builder: (context) => HomePage())));
                        },
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.inter(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 12),
                        child: Row(
                          children: [
                            Text(
                              'Sudah punya akun?',
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
                                        builder: (context) => LoginPage()));
                              },
                              child: Text(
                                'Login disini',
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
