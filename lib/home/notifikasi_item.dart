import 'package:flutter/material.dart';
import 'package:rc_app/themes/color_style.dart';
import 'package:rc_app/themes/text_style.dart';

class NotifikasiItem extends StatefulWidget {
  @override
  _NotifikasiItemState createState() => _NotifikasiItemState();
}

class _NotifikasiItemState extends State<NotifikasiItem> {
  List<String> info = [
    'Peminjaman bukumu sudah diterima, kamu sudah boleh membacanya dirumah...',
    'Batas peminjaman buku UI UX kamu akan segera berakhir jangan lupa kembalikan ya...'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          _title(),
          Expanded(
            child: ListView.builder(
              itemCount: info.length,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(top: 10),
                child: _cardInfo(info[index]),
              ),
            ),
          )
        ],
      ),
    );
  }

  _cardInfo(String info) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.info_outline_rounded,
                color: warnaKu.yellow,
              ),
              SizedBox(width: 12),
              Text(
                'Info . Hari ini',
                style: textKu.general,
              )
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            info,
            style: textKu.general,
          )
        ],
      ),
    );
  }

  _title() {
    return Padding(
      padding: EdgeInsets.only(top: 12),
      child: Center(
          child: Text(
        'Notifikasi',
        style: textKu.general
            .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
      )),
    );
  }
}
