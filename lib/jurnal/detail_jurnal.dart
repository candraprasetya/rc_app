import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rc_app/models/jurnal_model.dart';
import 'package:rc_app/themes/text_style.dart';

class DetailJurnal extends StatefulWidget {
  @override
  _DetailJurnalState createState() => _DetailJurnalState();
}

class _DetailJurnalState extends State<DetailJurnal> {
  JurnalModel jurnalModel = Get.arguments;
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
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(24),
              child: Card(
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    _infoJurnal(),
                    Expanded(
                      flex: 1,
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: _deskripsiJurnal(),
                      ),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }

  _deskripsiJurnal() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            jurnalModel.deskripsi,
            textAlign: TextAlign.justify,
            style: textKu.general.copyWith(fontSize: 13, color: Colors.black45),
          ),
        ],
      ),
    );
  }

  _infoJurnal() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          jurnalModel.judul,
          style: textKu.headline.copyWith(fontSize: 18, color: Colors.black87),
        ),
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
                  child: Text('Jurnal',
                      style:
                          textKu.general.copyWith(fontWeight: FontWeight.w500)),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Icon(Icons.cloud_download_outlined)
        ],
      ),
    );
  }
}
