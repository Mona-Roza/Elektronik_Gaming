import 'package:elektronik_gaming/Decoration/decoration.dart';
import 'package:elektronik_gaming/Decoration/sayfa_basi.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Admin extends StatefulWidget {
  const Admin({Key? key}) : super(key: key);

  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, info) {
      return info.deviceScreenType == DeviceScreenType.desktop
          ? Scaffold(body: desktop())
          : Scaffold(body: mobile());
    });
  }

  Widget desktop() {
    return SingleChildScrollView(
      child: SizedBox(
        child: Row(
          children: [
            const Expanded(flex: 1, child: SizedBox()),
            Expanded(
              flex: 5,
              child: Container(
                decoration:
                    boxesdecorations(Colors.grey.shade200, Colors.transparent),
                child: Column(
                  children: [
                    const SayfaBasi(),
                    const Text('SİPARİŞLERİM'),
                    contentWrap(),
                  ],
                ),
              ),
            ),
            const Expanded(flex: 1, child: SizedBox()),
          ],
        ),
      ),
    );
  }

  Widget mobile() {
    return SingleChildScrollView(
      child: SizedBox(
        child: Column(
          children: [
            contentWrap(),
          ],
        ),
      ),
    );
  }

  Widget contentWrap() {
    return Wrap();
  }

  Widget siparis(String resim, String urunAdi, String tarih, String adres,
      String isimSoyisim) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(resim), //küçük resim
              Text(urunAdi),
              Text(tarih),
              //details kısmı eklenecek aşağı açılır şekilde
              //açılan details kısmında müşteri adresi, isimsoyisim kısmı olacak
            ],
          ),
        ],
      ),
    );
  }
}
