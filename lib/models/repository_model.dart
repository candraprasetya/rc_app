class RepoModel {
  final String tag;
  final String imageAsset;
  final String judul;
  final String deskripsi;
  final Function onTap;
  final String category;
  final String peneliti;
  final String date;
  final String url;

  RepoModel(
      {this.judul,
      this.category,
      this.deskripsi,
      this.tag,
      this.url,
      this.date,
      this.peneliti,
      this.imageAsset,
      this.onTap});
}

List<RepoModel> listRepo = [
  RepoModel(
      imageAsset: 'assets/book1.png',
      judul:
          'ANALISIS PENGUKURAN USER EXPERIENCE DAN USER INTERFACE PEMESANAN TIKET BUS DENGAN METODE HIERARCHICAL TASK ANALYSIS PADA APLIKASI PO PULAU INDAH JAYA',
      tag: 'Pemrograman',
      category: 'JOURNAL OF INFORMATION SYSTEM MANAGEMENT',
      deskripsi:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Adipiscing lorem aliquet malesuada volutpat facilisi convallis. Ac lorem tempus ut egestas elementum adipiscing morbi. Accumsan quis non et velit ipsum, nunc sit. Dictum at est suscipit dui sapien, erat. Sem viverra hendrerit malesuada ac accumsan. Turpis eleifend enim nunc amet, lorem eget condimentum elit. Interdum aliquam rhoncus scelerisque quis tortor, egestas non. Mauris ut nisl non at cras fringilla eget habitant. Volutpat quisque pellentesque pellentesque quis vel. Id suspendisse vestibulum at lorem quam viverra lorem. Leo ut purus scelerisque dictum nunc mattis tellus. Nunc ultrices vulputate aliquet quam eget consectetur proin tellus massa. Dignissim et quis non lorem ornare cursus. Et, dignissim vestibulum augue risus. Aliquam ultrices amet neque ornare id leo. Arcu mus enim tristique aliquet dui sed vel maecenas lacus. Blandit.",
      date: '26 Desember 2019 - Undergraduate Thesis',
      peneliti: 'Hega Putra Pratama, Sudarmawan - 2019',
      url: 'https://ieeexplore.ieee.org/document/7890588',
      onTap: () {}),
  RepoModel(
      imageAsset: 'assets/book2.png',
      judul:
          'ANALISIS PENGUKURAN USER EXPERIENCE DAN USER INTERFACE PEMESANAN TIKET BUS DENGAN METODE HIERARCHICAL TASK ANALYSIS PADA APLIKASI PO PULAU INDAH JAYA',
      tag: 'Public Speaking',
      category: 'JOURNAL OF INFORMATION SYSTEM MANAGEMENT',
      date: '26 Desember 2019 - Undergraduate Thesis',
      peneliti: 'Hega Putra Pratama, Sudarmawan - 2019',
      url: 'https://ieeexplore.ieee.org/document/7890588',
      deskripsi:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Adipiscing lorem aliquet malesuada volutpat facilisi convallis. Ac lorem tempus ut egestas elementum adipiscing morbi. Accumsan quis non et velit ipsum, nunc sit. Dictum at est suscipit dui sapien, erat. Sem viverra hendrerit malesuada ac accumsan. Turpis eleifend enim nunc amet, lorem eget condimentum elit. Interdum aliquam rhoncus scelerisque quis tortor, egestas non. Mauris ut nisl non at cras fringilla eget habitant. Volutpat quisque pellentesque pellentesque quis vel. Id suspendisse vestibulum at lorem quam viverra lorem. Leo ut purus scelerisque dictum nunc mattis tellus. Nunc ultrices vulputate aliquet quam eget consectetur proin tellus massa. Dignissim et quis non lorem ornare cursus. Et, dignissim vestibulum augue risus. Aliquam ultrices amet neque ornare id leo. Arcu mus enim tristique aliquet dui sed vel maecenas lacus. Blandit.",
      onTap: () {}),
  RepoModel(
      imageAsset: 'assets/book2.png',
      judul:
          'ANALISIS PENGUKURAN USER EXPERIENCE DAN USER INTERFACE PEMESANAN TIKET BUS DENGAN METODE HIERARCHICAL TASK ANALYSIS PADA APLIKASI PO PULAU INDAH JAYA',
      category: 'JOURNAL OF INFORMATION SYSTEM MANAGEMENT',
      date: '26 Desember 2019 - Undergraduate Thesis',
      tag: 'Public Speaking',
      peneliti: 'Hega Putra Pratama, Sudarmawan - 2019',
      url: 'https://ieeexplore.ieee.org/document/7890588',
      deskripsi:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Adipiscing lorem aliquet malesuada volutpat facilisi convallis. Ac lorem tempus ut egestas elementum adipiscing morbi. Accumsan quis non et velit ipsum, nunc sit. Dictum at est suscipit dui sapien, erat. Sem viverra hendrerit malesuada ac accumsan. Turpis eleifend enim nunc amet, lorem eget condimentum elit. Interdum aliquam rhoncus scelerisque quis tortor, egestas non. Mauris ut nisl non at cras fringilla eget habitant. Volutpat quisque pellentesque pellentesque quis vel. Id suspendisse vestibulum at lorem quam viverra lorem. Leo ut purus scelerisque dictum nunc mattis tellus. Nunc ultrices vulputate aliquet quam eget consectetur proin tellus massa. Dignissim et quis non lorem ornare cursus. Et, dignissim vestibulum augue risus. Aliquam ultrices amet neque ornare id leo. Arcu mus enim tristique aliquet dui sed vel maecenas lacus. Blandit.",
      onTap: () {}),
  RepoModel(
      imageAsset: 'assets/book3.png',
      judul:
          'ANALISIS PENGUKURAN USER EXPERIENCE DAN USER INTERFACE PEMESANAN TIKET BUS DENGAN METODE HIERARCHICAL TASK ANALYSIS PADA APLIKASI PO PULAU INDAH JAYA',
      date: '26 Desember 2019 - Undergraduate Thesis',
      category: 'JOURNAL OF INFORMATION SYSTEM MANAGEMENT',
      peneliti: 'Hega Putra Pratama, Sudarmawan - 2019',
      url: 'https://ieeexplore.ieee.org/document/7890588',
      deskripsi:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Adipiscing lorem aliquet malesuada volutpat facilisi convallis. Ac lorem tempus ut egestas elementum adipiscing morbi. Accumsan quis non et velit ipsum, nunc sit. Dictum at est suscipit dui sapien, erat. Sem viverra hendrerit malesuada ac accumsan. Turpis eleifend enim nunc amet, lorem eget condimentum elit. Interdum aliquam rhoncus scelerisque quis tortor, egestas non. Mauris ut nisl non at cras fringilla eget habitant. Volutpat quisque pellentesque pellentesque quis vel. Id suspendisse vestibulum at lorem quam viverra lorem. Leo ut purus scelerisque dictum nunc mattis tellus. Nunc ultrices vulputate aliquet quam eget consectetur proin tellus massa. Dignissim et quis non lorem ornare cursus. Et, dignissim vestibulum augue risus. Aliquam ultrices amet neque ornare id leo. Arcu mus enim tristique aliquet dui sed vel maecenas lacus. Blandit.",
      tag: 'jurnal',
      onTap: () {})
];
