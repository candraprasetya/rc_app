class PinjamanModel {
  final String title;
  final String waktuPinjam;
  final String batasPinjam;
  final double denda;
  final String waktuKembali;

  PinjamanModel(
      {this.title,
      this.waktuKembali,
      this.waktuPinjam,
      this.batasPinjam,
      this.denda});
}

List<PinjamanModel> listPinjaman = [
  PinjamanModel(
      title:
          'Public Speaking: Kunci Sukses Bicara di Depan Publik: Teori dan Praktik',
      batasPinjam: '07.01.2021',
      denda: 1500,
      waktuKembali: '07.02.2021',
      waktuPinjam: '01.01.2021'),
  PinjamanModel(
      title:
          'Public Speaking: Kunci Sukses Bicara di Depan Publik: Teori dan Praktik',
      batasPinjam: '07.01.2021',
      denda: 0,
      waktuKembali: '07.02.2021',
      waktuPinjam: '01.01.2021'),
];
