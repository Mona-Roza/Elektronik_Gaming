import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elektronik_gaming/service/UrunService/urunmodel.dart';

class UrunService {
  static var database = FirebaseFirestore.instance;
  static List<UrunModel> urunList = [];

  static Future urunCek() async {
    urunList.clear();
    await database.collection('urunler1').get().then((value) {
      for (var element in value.docs) {
        urunList.add(UrunModel.fromSnapShot(element));
      }
    });
  }
}
