import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rc_app/detail_informasi.dart';
import 'package:rc_app/themes/text_style.dart';

import 'models/berita_model.dart';

class BannerScreen extends StatefulWidget {
  @override
  _BannerScreenState createState() => _BannerScreenState();
}

class _BannerScreenState extends State<BannerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _backButton(),
            Expanded(
              child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(), child: _listBanner()),
            ),
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
          Text('Informasi',
              style: textKu.general.copyWith(fontWeight: FontWeight.w500))
        ],
      ),
    );
  }

  _listBanner() {
    return Column(
      children: [
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: beritaku.map((berita) {
              return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 5),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => DetailInformasi(),
                          arguments: [berita.title, berita.subtitle]);
                    },
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          berita.asset,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ));
            }).toList(),
          ),
        ),
      ],
    );
  }
}
