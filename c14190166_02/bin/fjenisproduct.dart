import 'fproduct.dart';
import 'object.dart';

class BukuBiasa extends Product with Object {
  int isbn = 0;
  String? penulis;

  BukuBiasa(String? id, String? nama, String? judul, int harga, int isbn,
      String? penulis)
      : super(id, nama, judul, harga) {
    this.isbn = isbn;
    this.penulis = penulis;
  }

  void printBukuBiasa() {
    print(" ");
    print('ID: $id');
    print('Judul: ${judul}');
    print('Deskripsi: ${nama}');
    print('Harga: ${harga}');
    print('ISBN: ${isbn}');
    print('Penulis: ${penulis}');
  }
}

class BukuTravelGuide extends Product with Object {
  int isbn = 0;
  String? penulis;
  String? negara;

  BukuTravelGuide(String? id, String? nama, String? judul, int harga, int isbn,
      String? penulis, String? negara)
      : super(id, nama, judul, harga) {
    this.isbn = isbn;
    this.penulis = penulis;
    this.negara = negara;
  }
}

class CompactDisc extends Product with Object {
  String? artist;

  CompactDisc(
      String? id, String? nama, String? judul, int harga, String? artist)
      : super(id, nama, judul, harga) {
    this.artist = artist;
  }
}
