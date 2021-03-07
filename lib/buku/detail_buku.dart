import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rc_app/map_screen.dart';
import 'package:rc_app/models/buku_model.dart';
import 'package:rc_app/success_screen.dart';
import 'package:rc_app/themes/color_style.dart';
import 'package:rc_app/themes/text_style.dart';

class DetailBuku extends StatefulWidget {
  @override
  _DetailBukuState createState() => _DetailBukuState();
}

class _DetailBukuState extends State<DetailBuku> {
  BukuModel bukuModel = Get.arguments;
  bool disimpan = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _backButton(),
            _infoBuku(),
            _buttonBuku(),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: _deskripsiBuku(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _deskripsiBuku() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            bukuModel.deskripsi,
            textAlign: TextAlign.justify,
            style: textKu.general.copyWith(fontSize: 13, color: Colors.black45),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
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
                          text: bukuModel.lokasi,
                          style: textKu.general
                              .copyWith(fontSize: 14, color: warnaKu.yellow),
                        )
                      ]),
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      primary: warnaKu.yellow,
                      elevation: 0.0),
                  onPressed: () {
                    Get.to(() => MapScreen(), arguments: bukuModel.lokasi);
                  },
                  child: Icon(Icons.location_pin)),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _descText('Penerbit', bukuModel.penerbit),
                  _descText('Bahasa', bukuModel.bahasa),
                  _descText(
                      'Jumlah Halaman', bukuModel.jumlahHalaman.toString()),
                ],
              ),
              SizedBox(
                width: 60,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _descText('Penulis', bukuModel.penulis),
                  _descText('Negara', bukuModel.negara),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  _descText(String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: textKu.general.copyWith(
                fontSize: 14,
                color: Colors.black87,
                fontWeight: FontWeight.bold),
          ),
          Text(
            subtitle,
            style: textKu.general.copyWith(fontSize: 14, color: Colors.black45),
          )
        ],
      ),
    );
  }

  _buttonBuku() {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    primary: warnaKu.yellow,
                    elevation: 0.0),
                onPressed: () {
                  Get.to(() => SuccessScreen());
                },
                child: Text(
                  'Pinjam',
                  textAlign: TextAlign.justify,
                  style: textKu.general
                      .copyWith(fontSize: 13, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    disimpan = !disimpan;
                    listSaved.add(bukuModel);
                  });
                },
                child: Icon(
                  (disimpan)
                      ? Icons.bookmark_outlined
                      : Icons.bookmark_border_outlined,
                  size: 30,
                  color: warnaKu.yellow,
                )),
          ],
        ));
  }

  _infoBuku() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
                height: MediaQuery.of(context).size.width / 2.8,
                width: MediaQuery.of(context).size.width / 4,
                child: Image.asset(bukuModel.imageAsset, fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  bukuModel.judul,
                  style: textKu.general.copyWith(fontSize: 18),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  bukuModel.tahun.toString(),
                  style: textKu.general.copyWith(fontSize: 18),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  _backButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(Icons.arrow_back_ios),
                ),
                Expanded(
                  child: Text(bukuModel.judul,
                      style:
                          textKu.general.copyWith(fontWeight: FontWeight.w500)),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Icon(Icons.share_outlined)
        ],
      ),
    );
  }
}
