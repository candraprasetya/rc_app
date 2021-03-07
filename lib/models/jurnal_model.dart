class JurnalModel {
  final String tag;
  final String imageAsset;
  final String judul;
  final String deskripsi;
  final Function onTap;
  final String category;
  final String peneliti;
  final String url;

  JurnalModel(
      {this.judul,
      this.category,
      this.deskripsi,
      this.tag,
      this.url,
      this.peneliti,
      this.imageAsset,
      this.onTap});
}

List<JurnalModel> listJurnal = [
  JurnalModel(
      imageAsset: 'assets/book1.png',
      judul: 'Analisis Mantab',
      tag: 'Pemrograman',
      category: 'JOURNAL OF INFORMATION SYSTEM MANAGEMENT',
      deskripsi:
          "Firebase Auth provides many methods and utilities for enabling you to integrate secure authentication into your new or existing Flutter application. In many cases, you will need to know about the authentication state of your user, such as whether they're logged in or logged out. Firebase Auth enables you to subscribe in realtime to this state via a Stream. Once called, the stream provides an immediate event of the user's current authentication state, and then provides subsequent events whenever the authentication state changes.",
      url: 'https://ieeexplore.ieee.org/document/7890588',
      peneliti:
          'Redho Maland Aresta, Ero Wahyu Pratomo, Vicky Geraldino, Joko Dwi Santoso, Sri Mulyatun',
      onTap: () {}),
  JurnalModel(
      imageAsset: 'assets/book2.png',
      judul: 'Confident Speaking',
      tag: 'Public Speaking',
      category: 'JOURNAL OF INFORMATION SYSTEM MANAGEMENT',
      url: 'https://ieeexplore.ieee.org/document/7890588',
      peneliti:
          'Redho Maland Aresta, Ero Wahyu Pratomo, Vicky Geraldino, Joko Dwi Santoso, Sri Mulyatun',
      deskripsi:
          "Firebase Auth provides many methods and utilities for enabling you to integrate secure authentication into your new or existing Flutter application. In many cases, you will need to know about the authentication state of your user, such as whether they're logged in or logged out. Firebase Auth enables you to subscribe in realtime to this state via a Stream. Once called, the stream provides an immediate event of the user's current authentication state, and then provides subsequent events whenever the authentication state changes.",
      onTap: () {}),
  JurnalModel(
      imageAsset: 'assets/book2.png',
      url: 'https://ieeexplore.ieee.org/document/7890588',
      judul: 'Confident Speaking',
      category: 'JOURNAL OF INFORMATION SYSTEM MANAGEMENT',
      tag: 'Public Speaking',
      peneliti:
          'Redho Maland Aresta, Ero Wahyu Pratomo, Vicky Geraldino, Joko Dwi Santoso, Sri Mulyatun',
      deskripsi:
          "Firebase Auth provides many methods and utilities for enabling you to integrate secure authentication into your new or existing Flutter application. In many cases, you will need to know about the authentication state of your user, such as whether they're logged in or logged out. Firebase Auth enables you to subscribe in realtime to this state via a Stream. Once called, the stream provides an immediate event of the user's current authentication state, and then provides subsequent events whenever the authentication state changes.",
      onTap: () {}),
  JurnalModel(
      imageAsset: 'assets/book3.png',
      judul: 'Confident Jurnal',
      category: 'JOURNAL OF INFORMATION SYSTEM MANAGEMENT',
      url: 'https://ieeexplore.ieee.org/document/7890588',
      peneliti:
          'Redho Maland Aresta, Ero Wahyu Pratomo, Vicky Geraldino, Joko Dwi Santoso, Sri Mulyatun',
      deskripsi:
          "Firebase Auth provides many methods and utilities for enabling you to integrate secure authentication into your new or existing Flutter application. In many cases, you will need to know about the authentication state of your user, such as whether they're logged in or logged out. Firebase Auth enables you to subscribe in realtime to this state via a Stream. Once called, the stream provides an immediate event of the user's current authentication state, and then provides subsequent events whenever the authentication state changes.",
      tag: 'jurnal',
      onTap: () {})
];
