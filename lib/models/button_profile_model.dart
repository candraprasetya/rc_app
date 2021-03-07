import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonProfileModel {
  final IconData icon;
  final String title;
  final String subtitle;
  final Function onTap;

  ButtonProfileModel({this.icon, this.onTap, this.title, this.subtitle});
}

List<ButtonProfileModel> buttonProfile = [
  ButtonProfileModel(
      icon: Icons.mail_outline,
      title: 'Email',
      subtitle: 'muhammad.aulawi@students.amikom.ac.id'),
  ButtonProfileModel(
    icon: Icons.calendar_today_outlined,
    title: 'Angkatan',
    subtitle: '2017',
  ),
  ButtonProfileModel(
      icon: Icons.settings_outlined,
      subtitle: 'Pengaturan',
      onTap: () {
        Get.snackbar('Button', 'Pengaturan');
      }),
  ButtonProfileModel(
      icon: Icons.logout,
      subtitle: 'Keluar',
      onTap: () {
        Get.snackbar('Button', 'Keluar');
      })
];
