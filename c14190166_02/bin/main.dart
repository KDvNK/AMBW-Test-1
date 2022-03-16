import 'dart:io';
import 'fproduct.dart';
import 'fjenisproduct.dart';

void main() {
  int choice = 0;
  int jenisBarang = 0;
  int pilihanJenisBarang = 0;
  int n = 0;
  int batasHargaBawah = 0;
  int batasHargaAtas = 0;
  int lokasi = 0;
  List<Product> inventory = [];
  List<BukuBiasa> inventoryBukuBiasa = [];
  List<BukuTravelGuide> inventoryBukuTravelGuide = [];
  List<CompactDisc> inventoryCompactDisc = [];
  var bukuBiasa = BukuBiasa(' ', ' ', ' ', 0, 0, ' ');
  var bukuTravelGuide = BukuTravelGuide(' ', ' ', ' ', 0, 0, ' ', ' ');
  var cd = CompactDisc(' ', ' ', ' ', 0, ' ');
  var product = Product(' ', ' ', ' ', 0);
  var listBarang = new List.empty(growable: true);

  do {
    print(" ");
    print('TONI\'\S INVENTORY');
    print('Menu(s):');
    print('1. Tambah barang baru');
    print('2. Tampilkan sebuah barang');
    print('3. Meletakkan Barang pada lokasi tertentu');
    print('4. Tampilkan seluruh barang pada lokasi tertentu');
    print(
        '5. Tampilkan n-data barang pertama dengan kisaran harga yang diinputkan');
    print('6. Cari data/item berdasarkan title yang diinputkan');
    print('7. Exit');
    stdout.write("Pilih salah satu menu dengan mengetikkan angkanya: ");
    String? dtInput = stdin.readLineSync();
    choice = int.parse(dtInput!);
    if (choice == 1) {
      print(" ");
      print('Jenis-jenis barang: ');
      print('1. Buku Biasa');
      print('2. Buku Travel Guide');
      print('3. Compact Disc');
      stdout.write('Input jenis barang dengan menuliskan angkanya: ');
      String? inputJenisBarang = stdin.readLineSync();
      jenisBarang = int.parse(inputJenisBarang!);
      if (jenisBarang == 1) {
        print(" ");
        stdout.write('ID: ');
        bukuBiasa.id = stdin.readLineSync();
        stdout.write('Judul: ');
        bukuBiasa.judul = stdin.readLineSync();
        stdout.write('Deskripsi: ');
        bukuBiasa.nama = stdin.readLineSync();
        stdout.write('Harga: ');
        String? inputHarga = stdin.readLineSync();
        bukuBiasa.harga = int.parse(inputHarga!);
        stdout.write('ISBN: ');
        String? inputISBN = stdin.readLineSync();
        bukuBiasa.isbn = int.parse(inputISBN!);
        stdout.write('Penulis: ');
        bukuBiasa.penulis = stdin.readLineSync();
        inventoryBukuBiasa.add(bukuBiasa);
      } else if (jenisBarang == 2) {
        print(" ");
        stdout.write('ID: ');
        bukuTravelGuide.id = stdin.readLineSync();
        stdout.write('Judul: ');
        bukuTravelGuide.judul = stdin.readLineSync();
        stdout.write('Deskripsi: ');
        bukuTravelGuide.nama = stdin.readLineSync();
        stdout.write('Harga: ');
        String? inputHarga = stdin.readLineSync();
        bukuTravelGuide.harga = int.parse(inputHarga!);
        stdout.write('ISBN: ');
        String? inputISBN = stdin.readLineSync();
        bukuTravelGuide.isbn = int.parse(inputISBN!);
        stdout.write('Penulis: ');
        bukuTravelGuide.penulis = stdin.readLineSync();
        stdout.write('Negara: ');
        bukuTravelGuide.negara = stdin.readLineSync();
        inventoryBukuTravelGuide.add(bukuTravelGuide);
      } else if (jenisBarang == 3) {
        print(" ");
        stdout.write('ID: ');
        cd.id = stdin.readLineSync();
        stdout.write('Judul: ');
        cd.judul = stdin.readLineSync();
        stdout.write('Deskripsi: ');
        cd.nama = stdin.readLineSync();
        stdout.write('Harga: ');
        String? inputHarga = stdin.readLineSync();
        cd.harga = int.parse(inputHarga!);
        stdout.write('Artist: ');
        cd.artist = stdin.readLineSync();
        inventoryCompactDisc.add(cd);
      }
    } else if (choice == 2) {
      print(" ");
      print('Jenis-jenis barang: ');
      print('1. Buku Biasa');
      print('2. Buku Travel Guide');
      print('3. Compact Disc');
      stdout.write(
          'Pilih salah satu jenis barang yang ingin ditampilkan datanya: ');
      String? displayJenisBarang = stdin.readLineSync();
      pilihanJenisBarang = int.parse(displayJenisBarang!);
      if (pilihanJenisBarang == 1) {
        for (var n in inventoryBukuBiasa) {
          bukuBiasa.printBukuBiasa();
        }
      } else if (pilihanJenisBarang == 2) {
        print(" ");
        print('ID: ${bukuTravelGuide.id}');
        print('Judul: ${bukuTravelGuide.judul}');
        print('Deskripsi: ${bukuTravelGuide.nama}');
        print('Harga: ${bukuTravelGuide.harga}');
        print('ISBN: ${bukuTravelGuide.isbn}');
        print('Penulis: ${bukuTravelGuide.penulis}');
        print('Negara: ${bukuTravelGuide.negara}');
      } else if (pilihanJenisBarang == 3) {
        print(" ");
        print('ID: ${cd.id}');
        print('Judul: ${cd.judul}');
        print('Deskripsi: ${cd.nama}');
        print('Harga: ${cd.harga}');
        print('Artist: ${cd.artist}');
      }
    } else if (choice == 3) {
      print(' ');
      stdout.write('Ketik suatu nomor lokasi untuk meletakkan barang: ');
      String? letakBarang = stdin.readLineSync();
      lokasi = int.parse(letakBarang!);
    } else if (choice == 4) {
      print(" ");
      bukuBiasa.book();
      print('ID: ${bukuBiasa.id}');
      print('Judul: ${bukuBiasa.judul}');
      print('Deskripsi: ${bukuBiasa.nama}');
      print('Harga: ${bukuBiasa.harga}');
      print('ISBN: ${bukuBiasa.isbn}');
      print('Penulis: ${bukuBiasa.penulis}');

      print(" ");
      bukuTravelGuide.travelGuide();
      print('ID: ${bukuTravelGuide.id}');
      print('Judul: ${bukuTravelGuide.judul}');
      print('Deskripsi: ${bukuTravelGuide.nama}');
      print('Harga: ${bukuTravelGuide.harga}');
      print('ISBN: ${bukuTravelGuide.isbn}');
      print('Penulis: ${bukuTravelGuide.penulis}');
      print('Negara: ${bukuTravelGuide.negara}');

      print(" ");
      cd.compactDisc();
      print('ID: ${cd.id}');
      print('Judul: ${cd.judul}');
      print('Deskripsi: ${cd.nama}');
      print('Harga: ${cd.harga}');
      print('Artist: ${cd.artist}');
    } else if (choice == 5) {
      print(" ");
      stdout.write('N-data barang pertama: ');
      String? inputN = stdin.readLineSync();
      n = int.parse(inputN!);
      stdout.write('Batasan harga (bawah): ');
      String? inputBatasHargaBawah = stdin.readLineSync();
      batasHargaBawah = int.parse(inputBatasHargaBawah!);
      stdout.write('Batasan harga (atas): ');
      String? inputBatasHargaAtas = stdin.readLineSync();
      batasHargaAtas = int.parse(inputBatasHargaAtas!);
      if (product.harga >= batasHargaBawah && product.harga <= batasHargaAtas) {
        for (int i = 1; i <= n; i++) {
          print(" ");
          bukuBiasa.book();
          print('ID: ${bukuBiasa.id}');
          print('Judul: ${bukuBiasa.judul}');
          print('Deskripsi: ${bukuBiasa.nama}');
          print('Harga: ${bukuBiasa.harga}');
          print('ISBN: ${bukuBiasa.isbn}');
          print('Penulis: ${bukuBiasa.penulis}');

          print(" ");
          bukuTravelGuide.travelGuide();
          print('ID: ${bukuTravelGuide.id}');
          print('Judul: ${bukuTravelGuide.judul}');
          print('Deskripsi: ${bukuTravelGuide.nama}');
          print('Harga: ${bukuTravelGuide.harga}');
          print('ISBN: ${bukuTravelGuide.isbn}');
          print('Penulis: ${bukuTravelGuide.penulis}');
          print('Negara: ${bukuTravelGuide.negara}');

          print(" ");
          cd.compactDisc();
          print('ID: ${cd.id}');
          print('Judul: ${cd.judul}');
          print('Deskripsi: ${cd.nama}');
          print('Harga: ${cd.harga}');
          print('Artist: ${cd.artist}');
        }
      }
    } else if (choice == 6) {
      print(" ");
      stdout
          .write('Input item yang ingin dicari dengan mengetikkan judulnya: ');
      product.judul = stdin.readLineSync();
    }
  } while (choice != 7);
}
