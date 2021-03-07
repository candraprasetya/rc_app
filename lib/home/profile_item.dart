import 'package:flutter/material.dart';
import 'package:rc_app/models/button_profile_model.dart';
import 'package:rc_app/themes/color_style.dart';
import 'package:rc_app/themes/text_style.dart';

class ProfileItem extends StatefulWidget {
  @override
  _ProfileItemState createState() => _ProfileItemState();
}

class _ProfileItemState extends State<ProfileItem> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          _title(),
          _fotoProfile(),
          _nameAndEmail(),
          SizedBox(
            height: 27,
          ),
          _listButton()
        ],
      ),
    );
  }

  _title() {
    return Padding(
      padding: EdgeInsets.only(top: 12),
      child: Center(
          child: Text(
        'Profile',
        style: textKu.general
            .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
      )),
    );
  }

  _fotoProfile() {
    return Padding(
      padding: const EdgeInsets.only(top: 46.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          'http://amikom.ac.id/public/fotomhs/2017/17_11_1385.jpg',
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  _nameAndEmail() {
    return Column(
      children: [
        SizedBox(
          height: 6,
        ),
        Text(
          'Muhammad Burhan Aulawi',
          style: textKu.general
              .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          '17.11.1385',
          style: textKu.general
              .copyWith(fontSize: 18, fontWeight: FontWeight.w200),
        )
      ],
    );
  }

  _listButton() {
    return Column(
        children: buttonProfile
            .map((e) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 24, vertical: 3),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  child: Row(
                    children: [
                      Icon(
                        e.icon,
                        color: warnaKu.yellow,
                        size: 28,
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            (e.title != null)
                                ? Text(
                                    e.title,
                                    style: textKu.general.copyWith(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w300),
                                  )
                                : SizedBox(),
                            SizedBox(
                              height: 2,
                            ),
                            (e.subtitle != null)
                                ? Text(
                                    e.subtitle,
                                    style: textKu.general.copyWith(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold),
                                  )
                                : SizedBox()
                          ],
                        ),
                      ),
                      (e.onTap != null)
                          ? GestureDetector(
                              onTap: e.onTap,
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: warnaKu.yellow,
                              ),
                            )
                          : SizedBox(),
                    ],
                  ),
                ))
            .toList());
  }
}
