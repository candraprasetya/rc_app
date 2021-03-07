class RiwayatModel {
  final String tag;
  final String imageAsset;
  final String judul;
  final Function onTap;

  RiwayatModel({this.judul, this.tag, this.imageAsset, this.onTap});
}

List<RiwayatModel> listRiwayat = [
  RiwayatModel(
      imageAsset: 'assets/book1.png',
      judul: 'Confident Mantab',
      tag: 'Pemrograman',
      onTap: () {}),
  RiwayatModel(
      imageAsset: 'assets/book2.png',
      judul: 'Confident Speaking',
      tag: 'Public Speaking',
      onTap: () {}),
  RiwayatModel(
      imageAsset: 'assets/book2.png',
      judul: 'Confident Speaking',
      tag: 'Public Speaking',
      onTap: () {}),
  RiwayatModel(
      imageAsset: 'assets/book3.png',
      judul: 'Confident Jurnal',
      tag: 'jurnal',
      onTap: () {})
];

List<String> riwayatText = [
  'Jurnal',
  'Public Speaking',
  'Pemrograman',
  'UI/UX'
];
