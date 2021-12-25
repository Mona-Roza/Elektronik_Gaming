import 'package:cloud_firestore/cloud_firestore.dart';

class UrunModel {
  late String urunAdi;
  late String kategori;
  late double urunFiyat;
  late String gorsel;
  late int selectedRadio;

  UrunModel.fromSnapShot(DocumentSnapshot snapshot) {
    var data = snapshot.data() as dynamic;
    urunAdi = data['urunAdi'] ?? '';
    kategori = data['kategori'] ?? '';
    urunFiyat = data['urunFiyati'] ?? 0.0;
    gorsel = data['gorsel'] ?? '';
  }

  UrunModel.manuel(
      String surunAdi, double surunFiyat, String sgorsel, int sselectedRadio) {
    urunAdi = surunAdi;
    urunFiyat = surunFiyat;
    gorsel = sgorsel;
    selectedRadio = sselectedRadio;
  } //bu kısım ürün ekleme yeri olduğu zaman kullanılır. -sepette kullandık-
}
