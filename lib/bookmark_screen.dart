import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rc_app/buku/detail_buku.dart';
import 'package:rc_app/models/buku_model.dart';
import 'package:rc_app/themes/text_style.dart';

import 'models/ebook_model.dart';

class BookmarkScreen extends StatefulWidget {
  @override
  _BookmarkScreenState createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  String type = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _backButton(),
            Expanded(
              child: _listSaved(),
            )
          ],
        ),
      ),
    );
  }

  _listSaved() {
    return Column(
      children: [
        Expanded(
          child: GridView.count(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(24),
            crossAxisCount: 3,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            scrollDirection: Axis.vertical,
            childAspectRatio: ((MediaQuery.of(context).size.width / 2) /
                (MediaQuery.of(context).size.height / 2)),
            shrinkWrap: true,
            children: (type == 'buku')
                ? listSaved.map((e) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(() => DetailBuku(), arguments: e);
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.grey.withOpacity(.2),
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                    width: double.infinity,
                                    child: Image.asset(e.imageAsset,
                                        fit: BoxFit.cover)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: AutoSizeText(
                                  e.judul,
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: textKu.general.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList()
                : listSavedEbook.map((e) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(() => DetailBuku(), arguments: e);
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.grey.withOpacity(.2),
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                    width: double.infinity,
                                    child: Image.asset(e.imageAsset,
                                        fit: BoxFit.cover)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: AutoSizeText(
                                  e.judul,
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: textKu.general.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
          ),
        ),
      ],
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
            child: Text('Disimpan',
                style: textKu.general.copyWith(fontWeight: FontWeight.w500)),
          ),
        ],
      ),
    );
  }
}
