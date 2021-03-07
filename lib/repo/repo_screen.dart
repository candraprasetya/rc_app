import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rc_app/models/repository_model.dart';
import 'package:rc_app/repo/detail_repo.dart';
import 'package:rc_app/themes/text_style.dart';

class RepoScreen extends StatefulWidget {
  @override
  _RepoScreenState createState() => _RepoScreenState();
}

class _RepoScreenState extends State<RepoScreen> {
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
                  physics: BouncingScrollPhysics(), child: _listCategory()),
            ),
          ],
        ),
      ),
    );
  }

  _listCategory() {
    return Column(
      children: [
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: listRepo.map((repo) {
              return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 5),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => DetailRepo(), arguments: repo);
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 24),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              repo.judul,
                              style: textKu.headline.copyWith(
                                color: Colors.black87,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              repo.peneliti,
                              style: textKu.general.copyWith(
                                color: Colors.black87,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              repo.date,
                              style: textKu.general.copyWith(
                                color: Colors.black87,
                                fontSize: 14,
                              ),
                            )
                          ],
                        )),
                  ));
            }).toList(),
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
          Text('Repository',
              style: textKu.general.copyWith(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
