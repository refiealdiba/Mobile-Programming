class Makanan {
  final String nama;
  final String gambar;
  final String jenis;

  Makanan({required this.nama, required this.gambar, required this.jenis});
}

List<Makanan> listMakanan = [
  Makanan(
    nama: 'BigMac',
    gambar: 'assets/burger/BigMac.png',
    jenis: 'burger',
  ),
  Makanan(
      nama: 'Cheese Burger',
      gambar: 'assets/burger/Cheeseburger.png',
      jenis: 'burger'),
  Makanan(
      nama: 'Hamburger',
      gambar: 'assets/burger/Hamburger.png',
      jenis: 'burger'),
  Makanan(
    nama: 'McDouble',
    gambar: 'assets/burger/McDouble.png',
    jenis: 'burger',
  ),
];
