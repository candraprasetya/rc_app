import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rc_app/themes/text_style.dart';

class DetailInformasi extends StatefulWidget {
  @override
  _DetailInformasiState createState() => _DetailInformasiState();
}

class _DetailInformasiState extends State<DetailInformasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFC),
      body: SafeArea(
        child: Column(
          children: [
            _backButton(),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(16),
                margin: EdgeInsets.fromLTRB(24, 16, 24, 24),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Text(
                        Get.arguments[0],
                        style: textKu.general.copyWith(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        Get.arguments[1],
                        style: textKu.general.copyWith(fontSize: 14),
                      )
                    ],
                  ),
                ),
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
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios),
          ),
          Text('Detail Informasi',
              style: textKu.general.copyWith(fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}
