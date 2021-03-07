import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rc_app/bookmark_screen.dart';
import 'package:rc_app/buku/buku_category_screen.dart';
import 'package:rc_app/buku/detail_buku.dart';
import 'package:rc_app/models/buku_model.dart';
import 'package:rc_app/themes/color_style.dart';
import 'package:rc_app/themes/text_style.dart';

import '../widgets/riwayat_widget.dart';

class BukuScreen extends StatefulWidget {
  @override
  _BukuScreenState createState() => _BukuScreenState();
}

class _BukuScreenState extends State<BukuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _backButton(),
            searchBox(),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    _listBuku('Pemrograman'),
                    _listBuku('UI/UX'),
                    _listBuku('Mantab')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _listBuku(String category) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(category,
                  style: textKu.general.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
              GestureDetector(
                onTap: () {
                  Get.to(() => BukuCategoryScreen(), arguments: category);
                },
                child: Text('Lihat Semua',
                    style: textKu.general.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: warnaKu.ungu,
                    )),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: listBuku
                .expand((buku) => [
                      if (buku.tag == category)
                        Padding(
                          padding: EdgeInsets.only(
                              left: (listBuku.indexOf(buku) == 0) ? 24 : 16,
                              right: (listBuku.indexOf(buku) ==
                                      listBuku.length - 1)
                                  ? 24
                                  : 0),
                          child: GestureDetector(
                            onTap: () {
                              Get.to(() => DetailBuku(), arguments: buku);
                            },
                            child: BookWidget(
                              asset: buku.imageAsset,
                              judul: buku.judul,
                            ),
                          ),
                        )
                    ])
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget searchBox() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 2),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: 10,
          color: Colors.grey.withOpacity(.2),
        )
      ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Icon(Icons.search),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Cari apapun disini',
              ),
            ),
          ),
        ],
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
          Expanded(
            child: Text('Buku',
                style: textKu.general.copyWith(fontWeight: FontWeight.w500)),
          ),
          GestureDetector(
              onTap: () {
                Get.to(() => BookmarkScreen(), arguments: 'buku');
              },
              child: Icon(Icons.bookmark))
        ],
      ),
    );
  }
}
