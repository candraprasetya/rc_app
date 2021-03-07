class MenuModel {
  final String iconAsset;
  final String title;

  MenuModel({this.iconAsset, this.title});
}

List<MenuModel> listMenu = [
  MenuModel(iconAsset: 'assets/book.png', title: 'Buku'),
  MenuModel(iconAsset: 'assets/ebook.png', title: 'E-Book'),
  MenuModel(iconAsset: 'assets/jurnal.png', title: 'Jurnal'),
  MenuModel(iconAsset: 'assets/repo.png', title: 'Repo'),
];
