import 'package:flutter/material.dart';
import 'package:rc_app/models/pinjaman_model.dart';
import 'package:rc_app/themes/color_style.dart';
import 'package:rc_app/themes/text_style.dart';

class PinjamanItem extends StatefulWidget {
  const PinjamanItem({Key key}) : super(key: key);

  @override
  _PinjamanItemState createState() => _PinjamanItemState();
}

class _PinjamanItemState extends State<PinjamanItem> {
  int selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          _title(),
          _tab(),
          (selectedTab == 0) ? _pinjamanAktif() : _riwayatPinjam()
        ],
      ),
    );
  }

  _riwayatPinjam() {
    return Column(
      children: listPinjaman
          .map((e) => Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      e.title,
                      style: textKu.general.copyWith(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 16),
                            decoration: BoxDecoration(
                                color: warnaKu.yellow,
                                borderRadius: BorderRadius.circular(100)),
                            child: Text(
                              'Waktu pinjam : ${e.waktuPinjam}',
                              style: textKu.general
                                  .copyWith(fontSize: 12, color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 16),
                            decoration: BoxDecoration(
                                color: warnaKu.ungu,
                                borderRadius: BorderRadius.circular(100)),
                            child: Text(
                              'Batas pinjam : ${e.batasPinjam}',
                              style: textKu.general
                                  .copyWith(fontSize: 12, color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        (e.waktuKembali == null || e.waktuKembali != '')
                            ? Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 16),
                                  decoration: BoxDecoration(
                                      color: Colors.green.withOpacity(.8),
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Text(
                                    'Kembali : ${e.waktuKembali}',
                                    style: textKu.general.copyWith(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                ),
                              )
                            : SizedBox(),
                        (e.denda > 0)
                            ? SizedBox(
                                width: 10,
                              )
                            : SizedBox(),
                        (e.denda > 0)
                            ? Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 16),
                                  decoration: BoxDecoration(
                                      color: Colors.red[400],
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Text(
                                    'Denda : ${e.denda}',
                                    style: textKu.general.copyWith(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                ),
                              )
                            : SizedBox(),
                      ],
                    ),
                  ],
                ),
              ))
          .toList(),
    );
  }

  _pinjamanAktif() {
    return Column(
      children: listPinjaman
          .map((e) => Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      e.title,
                      style: textKu.general.copyWith(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 16),
                            decoration: BoxDecoration(
                                color: warnaKu.yellow,
                                borderRadius: BorderRadius.circular(100)),
                            child: Text(
                              'Waktu pinjam : ${e.waktuPinjam}',
                              style: textKu.general
                                  .copyWith(fontSize: 12, color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 16),
                            decoration: BoxDecoration(
                                color: warnaKu.ungu,
                                borderRadius: BorderRadius.circular(100)),
                            child: Text(
                              'Batas pinjam : ${e.batasPinjam}',
                              style: textKu.general
                                  .copyWith(fontSize: 12, color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    (e.denda > 0)
                        ? Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 16),
                                  decoration: BoxDecoration(
                                      color: Colors.red[400],
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Text(
                                    'Denda : Rp.${e.denda}',
                                    style: textKu.general.copyWith(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          )
                        : SizedBox(),
                  ],
                ),
              ))
          .toList(),
    );
  }

  _title() {
    return Padding(
      padding: EdgeInsets.only(top: 12),
      child: Center(
          child: Text(
        'Pinjaman',
        style: textKu.general
            .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
      )),
    );
  }

  _tab() {
    return Padding(
      padding: EdgeInsets.only(top: 18),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: _button(
                textColor: (selectedTab == 0)
                    ? Colors.white
                    : warnaKu.shadowGoogleColor,
                i: 0,
                left: 24,
                right: 8,
                text: 'Pinjaman Aktif',
                color: (selectedTab == 0)
                    ? warnaKu.yellow
                    : warnaKu.shadowGoogleColor.withOpacity(.2)),
          ),
          Expanded(
            flex: 1,
            child: _button(
                textColor: (selectedTab == 1)
                    ? Colors.white
                    : warnaKu.shadowGoogleColor,
                i: 1,
                left: 8,
                right: 24,
                text: 'Riwayat',
                color: (selectedTab == 1)
                    ? warnaKu.yellow
                    : warnaKu.shadowGoogleColor.withOpacity(.2)),
          )
        ],
      ),
    );
  }

  _button(
      {int i,
      Color color,
      Color textColor,
      String text,
      double left,
      double right}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTab = i;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        margin: EdgeInsets.only(left: left, right: right),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: textKu.general.copyWith(
                fontSize: 12, color: textColor, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
