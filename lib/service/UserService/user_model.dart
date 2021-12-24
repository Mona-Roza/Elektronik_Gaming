import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  static String? isim;
  static String? soyisim;
  static String? telNo;
  static String? adres;

  UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    var data = snapshot.data() as dynamic;
    isim = data['isim'];
    soyisim = data['soyisim'];
    telNo = data['telNo'];
    adres = data['adres'];
  }
}
