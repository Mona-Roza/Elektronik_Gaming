import 'package:elektronik_gaming/Decoration/decoration.dart';
import 'package:elektronik_gaming/Decoration/sayfa_basi.dart';
import 'package:elektronik_gaming/Header-Footer/footer.dart';
import 'package:elektronik_gaming/Pages/kategori/cardd.dart';
import 'package:elektronik_gaming/Pages/sepet/sepet.dart';
import 'package:elektronik_gaming/service/UrunService/urunmodel.dart';
import 'package:elektronik_gaming/service/UrunService/urunservice.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Kategori extends StatefulWidget {
  String kategori = 'kategorismi';
  Kategori({Key? key, required this.kategori}) : super(key: key);
  @override
  _KategoriState createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, info) {
        return info.deviceScreenType == DeviceScreenType.desktop
            ? desktop(context)
            : mobile(context);
      },
    );
  }

  Widget desktop(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        child: Column(
          children: [
            const SayfaBasi(),
            Row(
              children: [
                const Expanded(flex: 1, child: SizedBox()),
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: boxesdecorations(
                        Colors.grey.shade200, Colors.transparent),
                    child: Column(
                      children: [
                        contentWrap(context, true),
                      ],
                    ),
                  ),
                ),
                const Expanded(flex: 1, child: SizedBox())
              ],
            ),
            const SizedBox(height: 20),
            const Footer(),
          ],
        ),
      ),
    );
  }

  Widget mobile(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration:
                  boxesdecorations(Colors.grey.shade100, Colors.transparent),
              child: contentWrap(context, false),
            ),
          ),
          const SizedBox(height: 20),
          const Footer(),
        ],
      ),
    );
  }

  Widget contentWrap(BuildContext context, bool isdesktop) {
    String secilen = widget.kategori;
    String kategori1 = 'klavye';
    String kategori2 = 'koltuk';
    String kategori3 = 'kulaklık';
    String kategori4 = 'mouse';

    switch (secilen) {
      case 'hepsi':
        return Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            children: [
              ...UrunService.urunList.where((element) {
                return kategori1 == 'kategori'
                    ? element.kategori == element.kategori
                    : element.kategori == kategori1;
              }).map((e) => imagesBox(
                  isdesktop, context, e.urunAdi, e.urunFiyat, e.gorsel)),
              ...UrunService.urunList.where((element) {
                return kategori2 == 'kategori'
                    ? element.kategori == element.kategori
                    : element.kategori == kategori2;
              }).map((e) => imagesBox(
                  isdesktop, context, e.urunAdi, e.urunFiyat, e.gorsel)),
              ...UrunService.urunList.where((element) {
                return kategori3 == 'kategori'
                    ? element.kategori == element.kategori
                    : element.kategori == kategori3;
              }).map((e) => imagesBox(
                  isdesktop, context, e.urunAdi, e.urunFiyat, e.gorsel)),
              ...UrunService.urunList.where((element) {
                return kategori4 == 'kategori'
                    ? element.kategori == element.kategori
                    : element.kategori == kategori4;
              }).map((e) => imagesBox(
                  isdesktop, context, e.urunAdi, e.urunFiyat, e.gorsel)),
            ]);

      default:
        return Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            children: [
              ...UrunService.urunList.where((element) {
                return secilen == 'kategori'
                    ? element.kategori == element.kategori
                    : element.kategori == secilen;
              }).map((e) => imagesBox(
                  isdesktop, context, e.urunAdi, e.urunFiyat, e.gorsel)),
            ]);
    }
  }

  Widget imagesBox(bool isdesktop, BuildContext context, String isim,
      double fiyat, String resim) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: boxesdecorations(Colors.white, Colors.orange.shade400),
        width: 300,
        height: isdesktop ? 600 : 610,
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: Image.asset(
                resim,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: isdesktop ? 20 : 10),
            Text(isim,
                style: TextStyle(fontSize: 20, color: Colors.orange.shade900)),
            const Expanded(child: SizedBox()),
            Text(
              '$fiyat TL',
              style: const TextStyle(fontSize: 20),
            ),
            const Expanded(child: SizedBox()),
            sepetButonu(isim, fiyat, resim),
          ],
        ),
      ),
      onTap: () {
        showJoinAlert(context, isim, fiyat, resim);
      },
    );
  }

  Widget sepetButonu(String isim, double fiyat, String resim) {
    return Container(
      height: 60,
      width: 250,
      decoration: boxesdecorations(Colors.orange.shade900, Colors.transparent),
      child: InkWell(
        child: Row(
          children: const [
            Expanded(child: SizedBox()),
            Text(
              'SEPETE EKLE',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            SizedBox(width: 20),
            FaIcon(FontAwesomeIcons.shoppingCart,
                size: 35, color: Colors.white),
            Expanded(child: SizedBox()),
          ],
        ),
        onTap: () {
          Sepet.sepetList.add(UrunModel.manuel(isim, fiyat, resim, 1));
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Ürün sepete eklendi!')));
        },
      ),
    );
  }

  void showJoinAlert(
      BuildContext context, String baslik, double fiyat, String resim) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          actions: [
            InkWell(
                onTap: () => Navigator.pop(context, false),
                child: const FaIcon(
                  FontAwesomeIcons.solidTimesCircle,
                  color: Colors.black,
                ))
          ],
          content: Container(
            padding: const EdgeInsets.all(10),
            height: 1000,
            width: 1200,
            child: Center(
              child: Cardd(
                isim: baslik,
                fiyat: fiyat,
                resim: resim,
              ),
            ),
          ),
        );
      },
    );
  }
}
