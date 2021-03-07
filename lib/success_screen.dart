import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rc_app/buku/buku_screen.dart';
import 'package:rc_app/home_screen.dart';
import 'package:rc_app/themes/text_style.dart';
import 'themes/color_style.dart';
import 'package:lottie/lottie.dart';

class SuccessScreen extends StatefulWidget {
  @override
  _SuccessScreenState createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset('assets/check.json',
                        width: 200, repeat: false),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Peminjamanmu diterima',
                      style: textKu.general.copyWith(
                        color: warnaKu.ungu,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 60),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        primary: warnaKu.yellow,
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100))),
                    onPressed: () {
                      Get.offAll(() => HomeScreen());
                    },
                    icon: Icon(Icons.arrow_back_ios_rounded),
                    label: Text('Back'),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
