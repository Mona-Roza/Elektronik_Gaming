import 'package:cloud_firestore/cloud_firestore.dart';

class SiparisModel {
  late String urunAdi;
  late String kategori;
  late double urunFiyat;
  late String gorsel;

  SiparisModel.fromSnapShot(DocumentSnapshot snapshot) {
    var data = snapshot.data() as dynamic;
    urunAdi = data['urunAdi'] ?? '';
    kategori = data['kategori'] ?? '';
    urunFiyat = data['urunFiyati'] ?? 0.0;
    gorsel = data['gorsel'] ?? '';
  }

  SiparisModel.manuel(String surunAdi, double surunFiyat, String sgorsel) {
    urunAdi = surunAdi;
    urunFiyat = surunFiyat;
    gorsel = sgorsel;
  } //bu kısım sepette kullanacağım
}
