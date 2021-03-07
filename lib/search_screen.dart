import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rc_app/buku/buku_screen.dart';
import 'package:rc_app/models/buku_model.dart';
import 'package:rc_app/models/ebook_model.dart';
import 'package:rc_app/models/jurnal_model.dart';
import 'package:rc_app/models/repository_model.dart';
import 'package:rc_app/themes/color_style.dart';
import 'package:rc_app/themes/text_style.dart';
import 'package:rc_app/widgets/riwayat_widget.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
                    _listBuku(),
                    _listJurnal(),
                    _listRepository(),
                    _listEBook(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
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
            child: Text(Get.arguments,
                style: textKu.general.copyWith(fontWeight: FontWeight.w500)),
          ),
          (Get.arguments == 'Buku') ? Icon(Icons.bookmark) : SizedBox()
        ],
      ),
    );
  }

  _listBuku() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Buku',
                  style: textKu.general.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
              GestureDetector(
                onTap: () {
                  Get.to(() => BukuScreen());
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
            children: listBuku.map((buku) {
              int index = listBuku.indexOf(buku);
              return Padding(
                padding: EdgeInsets.only(
                    left: (index == 0) ? 24 : 16,
                    right: (index == listBuku.length - 1) ? 24 : 0),
                child: BookWidget(
                  asset: buku.imageAsset,
                  judul: buku.judul,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  _listJurnal() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Jurnal',
                  style: textKu.general.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
              Text('Lihat Semua',
                  style: textKu.general.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: warnaKu.ungu,
                  ))
            ],
          ),
        ),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: listJurnal.map((jurnal) {
              int index = listJurnal.indexOf(jurnal);
              return Padding(
                padding: EdgeInsets.only(
                    left: (index == 0) ? 24 : 16,
                    right: (index == listJurnal.length - 1) ? 24 : 0),
                child: BookWidget(
                  asset: jurnal.imageAsset,
                  judul: jurnal.judul,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  _listRepository() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Repository',
                  style: textKu.general.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
              Text('Lihat Semua',
                  style: textKu.general.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: warnaKu.ungu,
                  ))
            ],
          ),
        ),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: listRepo.map((repo) {
              int index = listRepo.indexOf(repo);
              return Padding(
                padding: EdgeInsets.only(
                    left: (index == 0) ? 24 : 16,
                    right: (index == listRepo.length - 1) ? 24 : 0),
                child: BookWidget(
                  asset: repo.imageAsset,
                  judul: repo.judul,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  _listEBook() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('E-Book',
                  style: textKu.general.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
              Text('Lihat Semua',
                  style: textKu.general.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: warnaKu.ungu,
                  ))
            ],
          ),
        ),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: listEBook.map((ebook) {
              int index = listEBook.indexOf(ebook);
              return Padding(
                padding: EdgeInsets.only(
                    left: (index == 0) ? 24 : 16,
                    right: (index == listEBook.length - 1) ? 24 : 0),
                child: BookWidget(
                  asset: ebook.imageAsset,
                  judul: ebook.judul,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
