class EBookModel {
  final String tag;
  final String imageAsset;
  final String judul;
  final String penerbit;
  final int tahun;
  final String bahasa;
  final int jumlahHalaman;
  final String negara;
  final String penulis;
  final String deskripsi;
  final String lokasi;
  final Function onTap;

  EBookModel(
      {this.tag,
      this.imageAsset,
      this.judul,
      this.tahun,
      this.penerbit,
      this.bahasa,
      this.deskripsi,
      this.jumlahHalaman,
      this.negara,
      this.penulis,
      this.lokasi,
      this.onTap});
}

List<EBookModel> listEBook = [
  EBookModel(
      bahasa: 'Indonesia',
      jumlahHalaman: 150,
      lokasi: 'Lantai 1 Rak Buku Desain',
      negara: 'Indonesia',
      tahun: 2018,
      penerbit: 'Kardusinfo',
      penulis: 'Candra',
      deskripsi: 'Tactical UI Design Patterns',
      imageAsset: 'assets/book1.png',
      judul: 'Tactical UI Design Petterns The Handbook to Faster Design.',
      tag: 'Pemrograman',
      onTap: () {}),
  EBookModel(
      bahasa: 'Indonesia',
      jumlahHalaman: 150,
      deskripsi:
          'Tactical UI Design Patterns: The Handbook to Faster Design covers everything a designer needs to know to dive into UI patterns.\n\nFrom the free design library of the prototyping app UXPin, the e-book draws illustrates its points with examples from Adobe, AIGA, ESPN, Hotels.com, IMDb, the Atlantic, Discovery Channel, and more.\n\nThe first part of the book, written by 20-year web design veteran Ben Gremillion (formerly of design agency ZURB), covers the hows and why of patterns, including guidelines on how you can choose, design, apply, prototype, and test them.',
      lokasi: 'Lantai 1 Rak Buku Desain',
      tahun: 2018,
      negara: 'Indonesia',
      penerbit: 'Kardusinfo',
      penulis: 'Candra',
      imageAsset: 'assets/book2.png',
      judul: 'Confident Mantab',
      tag: 'Pemrograman',
      onTap: () {}),
  EBookModel(
      bahasa: 'Indonesia',
      jumlahHalaman: 150,
      tahun: 2018,
      lokasi: 'Lantai 1 Rak Buku Desain',
      negara: 'Indonesia',
      deskripsi:
          'Tactical UI Design Patterns: The Handbook to Faster Design covers everything a designer needs to know to dive into UI patterns.\n\nFrom the free design library of the prototyping app UXPin, the e-book draws illustrates its points with examples from Adobe, AIGA, ESPN, Hotels.com, IMDb, the Atlantic, Discovery Channel, and more.\n\nThe first part of the book, written by 20-year web design veteran Ben Gremillion (formerly of design agency ZURB), covers the hows and why of patterns, including guidelines on how you can choose, design, apply, prototype, and test them.',
      penerbit: 'Kardusinfo',
      penulis: 'Candra',
      imageAsset: 'assets/book3.png',
      judul: 'Confident Mantab',
      tag: 'Public Speaking',
      onTap: () {}),
  EBookModel(
      bahasa: 'Indonesia',
      jumlahHalaman: 150,
      tahun: 2018,
      lokasi: 'Lantai 1 Rak Buku Desain',
      negara: 'Indonesia',
      penerbit: 'Kardusinfo',
      penulis: 'Candra',
      deskripsi:
          'Tactical UI Design Patterns: The Handbook to Faster Design covers everything a designer needs to know to dive into UI patterns.\n\nFrom the free design library of the prototyping app UXPin, the e-book draws illustrates its points with examples from Adobe, AIGA, ESPN, Hotels.com, IMDb, the Atlantic, Discovery Channel, and more.\n\nThe first part of the book, written by 20-year web design veteran Ben Gremillion (formerly of design agency ZURB), covers the hows and why of patterns, including guidelines on how you can choose, design, apply, prototype, and test them.',
      imageAsset: 'assets/book1.png',
      judul: 'Confident Mantab',
      tag: 'Enterpreneur',
      onTap: () {}),
  EBookModel(
      bahasa: 'Indonesia',
      jumlahHalaman: 4,
      tahun: 2021,
      lokasi: 'Lantai 1 Rak B',
      negara: 'Jepara',
      penerbit: 'Kardusinfo',
      penulis: 'Burhan',
      deskripsi:
          'Well, efficiency (as in performance) should not be affected since you are chaining iterators which handles values one by one. So using a where() should not be an issue here. If you want a more compact solution you can do this (which creates a new List temporary for each element in a, which makes it less efficient):',
      imageAsset: 'assets/book1.png',
      judul: 'Starting UI/UX',
      tag: 'Pemrograman',
      onTap: () {}),
];

List<EBookModel> listSavedEbook = [];
