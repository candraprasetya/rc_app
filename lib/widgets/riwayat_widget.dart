import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:rc_app/themes/text_style.dart';

class BookWidget extends StatelessWidget {
  final String asset;
  final String judul;

  const BookWidget({Key key, this.asset, this.judul}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: 100,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.grey.withOpacity(.2),
          )
        ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 140,
                width: double.infinity,
                child: Image.asset(asset, fit: BoxFit.cover)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AutoSizeText(
                judul,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: textKu.general
                    .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
