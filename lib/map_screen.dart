import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rc_app/themes/text_style.dart';
import 'package:rc_app/themes/color_style.dart';

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _backButton(),
            _lokasiText(),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  mapImage(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _backButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios),
          ),
          Center(
            child: Text('Lokasi',
                style: textKu.general.copyWith(fontWeight: FontWeight.w500)),
          ),
        ],
      ),
    );
  }

  _lokasiText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
            text: 'Lokasi\n',
            style: textKu.general.copyWith(
                fontSize: 14,
                color: Colors.black87,
                fontWeight: FontWeight.w900),
            children: [
              TextSpan(
                text: Get.arguments,
                style: textKu.general
                    .copyWith(fontSize: 14, color: warnaKu.yellow),
              )
            ]),
      ),
    );
  }

  mapImage(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Image.asset(
          'assets/denah.png',
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}
