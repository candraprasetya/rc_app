import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rc_app/models/repository_model.dart';
import 'package:rc_app/themes/text_style.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailRepo extends StatefulWidget {
  @override
  _DetailRepoState createState() => _DetailRepoState();
}

class _DetailRepoState extends State<DetailRepo> {
  RepoModel repoModel = Get.arguments;
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
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(children: [
                    _infoRepo(),
                    _deskripsiJurnal(),
                  ]),
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
          SizedBox(
            height: 12,
          ),
          Text(
            'Abstraksi \n\n${repoModel.deskripsi}',
            textAlign: TextAlign.justify,
            style: textKu.general.copyWith(fontSize: 13, color: Colors.black45),
          ),
        ],
      ),
    );
  }

  _infoRepo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            repoModel.judul,
            style:
                textKu.headline.copyWith(fontSize: 13, color: Colors.black87),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            repoModel.peneliti,
            style: textKu.general.copyWith(fontSize: 13, color: Colors.black87),
          ),
          Text(
            repoModel.date,
            style: textKu.general.copyWith(fontSize: 13, color: Colors.black87),
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
                  child: Text('Repository',
                      style:
                          textKu.general.copyWith(fontWeight: FontWeight.w500)),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          GestureDetector(
              onTap: () async {
                await canLaunch(repoModel.url)
                    ? await launch(repoModel.url)
                    : Get.snackbar('Error', 'Error Download');
              },
              child: Icon(Icons.cloud_download_outlined))
        ],
      ),
    );
  }
}
