import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rc_app/home_screen.dart';
import 'package:rc_app/themes/color_style.dart';
import 'package:rc_app/themes/text_style.dart';
import 'package:rc_app/widgets/custom_text_field.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nimController = TextEditingController();
  TextEditingController passController = TextEditingController();

  void pindahKeHomeScreen() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ));
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color(0xFFFAFAFC),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Image
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 54),
                    child: logoAmikom,
                  ),
                  //Text
                  textHalo,
                  SizedBox(
                    height: 16,
                  ),
                  //TextField
                  Column(
                    children: [
                      CustomTextField(
                        controller: nimController,
                        hint: 'Nomor Induk Mahasiswa',
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      CustomTextField(
                        isPassword: true,
                        controller: passController,
                        hint: 'Password',
                      )
                    ],
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  //Button
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: warnaKu.ungu,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          shadowColor: warnaKu.ungu,
                          elevation: 6),
                      onPressed: () {
                        if (nimController.text == '17.11.1385' &&
                            passController.text == '1234') {
                          // Navigator.pushReplacement(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => HomeScreen()));
                          Get.off(HomeScreen());
                        } else {
                          Get.snackbar('Error', 'Nim atau Password salah');
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Klik Aku Mas',
                          style: textKu.general
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 55,
                  ),
                  //Text
                  Center(
                      child: Text(
                    '- Masuk dengan akun -',
                    style: textKu.general,
                  )),
                  //Button
                  SizedBox(
                    height: 36,
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          shadowColor: warnaKu.shadowGoogleColor,
                          elevation: 6,
                          primary: Colors.white),
                      onPressed: () {
                        if (nimController.text == '17.11.1385' &&
                            passController.text == '1234') {
                          // Navigator.pushReplacement(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => HomeScreen()));
                          Get.off(HomeScreen());
                        } else {
                          Get.snackbar('Error', 'Nim atau Password salah');
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset('assets/Google.png'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  Widget logoAmikom = Center(child: Image.asset('assets/Amikom.png'));

  Widget textHalo = RichText(
    textAlign: TextAlign.start,
    text: TextSpan(
        children: [
          TextSpan(
              text: '\nSilahkan Masuk dengan akun Amikom',
              style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w300))
        ],
        text: 'Halo,',
        style: GoogleFonts.poppins(
            color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600)),
  );
}
