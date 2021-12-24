import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elektronik_gaming/service/SiparisService/siparis_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SiparisService {
  static var database = FirebaseFirestore.instance;
  static var authService = FirebaseAuth.instance;
  static List<SiparisModel> siparisList = [];
  static List<SiparisModel> sepetList = [];

  static Future siparisAl(String isim, double fiyat, String gorsel) async {
    await database
        .collection('siparisler')
        .add({'isim': isim, 'fiyat': fiyat, 'gorsel': gorsel});
  }

  static Future siparisCek() async {
    siparisList.clear();
    await database.collection('siparisler').get().then((value) {
      for (var element in value.docs) {
        siparisList.add(SiparisModel.fromSnapShot(element));
      }
    });
  }

  // static Future sepetAl(
  //     String isim, double fiyat, String gorsel, num adet) async {
  //   await database
  //       .collection(authService.currentUser!.uid)
  //       .add();
  //   if (Sepet.siparisTamamlandi == true) {
  //     //
  //   }
  // }
}
