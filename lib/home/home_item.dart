import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rc_app/banner_screen.dart';
import 'package:rc_app/buku/buku_screen.dart';
import 'package:rc_app/detail_informasi.dart';
import 'package:rc_app/ebook/ebook_screen.dart';
import 'package:rc_app/jurnal/jurnal_screen.dart';
import 'package:rc_app/models/berita_model.dart';
import 'package:rc_app/models/menu_model.dart';
import 'package:rc_app/models/riwayat_model.dart';
import 'package:rc_app/repo/repo_screen.dart';
import 'package:rc_app/search_screen.dart';
import 'package:rc_app/themes/color_style.dart';
import 'package:rc_app/themes/text_style.dart';
import 'package:rc_app/widgets/riwayat_widget.dart';

class HomeItem extends StatefulWidget {
  @override
  _HomeItemState createState() => _HomeItemState();
}

class _HomeItemState extends State<HomeItem> {
  int selected = 0;
  int _current = 0;

  TextEditingController riwayat = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          topBar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Informasi',
                    style: textKu.general.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    )),
                GestureDetector(
                  onTap: () {
                    Get.to(() => BannerScreen());
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
          SizedBox(height: 10),
          carouselBerita(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Menu',
                  style: textKu.general.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 24),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: listMenu.map((menu) {
                    return Expanded(
                      flex: 1,
                      child: GestureDetector(
                          onTap: () {
                            if (menu.title == 'Buku') {
                              Get.to(() => BukuScreen());
                            } else if (menu.title == 'E-Book') {
                              Get.to(() => EbookScreen());
                            } else if (menu.title == 'Jurnal') {
                              Get.to(() => JurnalScreen());
                            } else {
                              Get.to(() => RepoScreen());
                            }
                          },
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(menu.iconAsset),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  menu.title,
                                  style: textKu.general.copyWith(
                                      fontSize: 14,
                                      color: warnaKu.yellow,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          )),
                    );
                  }).toList())),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Riwayat',
                  style: textKu.general.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: riwayatText
                    .map((tag) => Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                          margin: EdgeInsets.only(
                              left: (riwayatText.indexOf(tag) == 0) ? 24 : 8,
                              right: (riwayatText.indexOf(tag) ==
                                      riwayatText.length - 1)
                                  ? 24
                                  : 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: warnaKu.ungu)),
                          child: AutoSizeText(
                            tag,
                            style: textKu.general
                                .copyWith(fontSize: 8, color: warnaKu.ungu),
                          ),
                        ))
                    .toList()),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: listRiwayat.map((riwayat) {
                int index = listRiwayat.indexOf(riwayat);
                return Padding(
                  padding: EdgeInsets.only(
                      left: (index == 0) ? 24 : 16,
                      right: (index == listRiwayat.length - 1) ? 24 : 0),
                  child: BookWidget(
                    asset: riwayat.imageAsset,
                    judul: riwayat.judul,
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    ));
  }

  Widget carouselBerita() {
    return Column(children: [
      CarouselSlider(
        items: imageSliders,
        options: CarouselOptions(
            enableInfiniteScroll: false,
            autoPlay: false,
            aspectRatio: 2.4,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: beritaku.map((berita) {
          int index = beritaku.indexOf(berita);
          return Container(
            width: _current == index ? 20.0 : 8.0,
            height: 8.0,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              color: _current == index
                  ? warnaKu.yellow
                  : warnaKu.shadowGoogleColor,
            ),
          );
        }).toList(),
      ),
    ]);
  }

  final List<Widget> imageSliders = beritaku
      .map((item) => GestureDetector(
            onTap: () {
              Get.to(() => DetailInformasi(),
                  arguments: [item.title, item.subtitle]);
            },
            child: Container(
              margin:
                  EdgeInsets.only(left: (beritaku.indexOf(item) == 0) ? 0 : 16),
              child: Container(
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(item.asset,
                        fit: BoxFit.cover, width: 1000.0)),
              ),
            ),
          ))
      .toList();

  Widget topBar() {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          Expanded(child: searchBox()),
          SizedBox(
            width: 16,
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.grey.withOpacity(.2),
              )
            ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                'http://amikom.ac.id/public/fotomhs/2017/17_11_1385.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget searchBox() {
    return Container(
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
              controller: riwayat,
              onSubmitted: (value) {
                setState(() {
                  riwayatText.add(value);
                  riwayat.clear();
                });
                Get.to(() => SearchScreen(), arguments: 'Pencarian');
              },
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
}
