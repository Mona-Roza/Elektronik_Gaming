import 'package:elektronik_gaming/Decoration/decoration.dart';
import 'package:elektronik_gaming/Decoration/sayfa_basi.dart';
import 'package:elektronik_gaming/Header-Footer/footer.dart';
import 'package:elektronik_gaming/Pages/anasayfa/kutucuk.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
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
      child: Column(
        children: [
          const SayfaBasi(),
          Row(
            children: [
              const Expanded(flex: 1, child: SizedBox()),
              Expanded(
                  flex: 5,
                  child: Container(
                      decoration: boxesdecorations(Colors.grey.shade200),
                      child: Column(children: const [
                        SizedBox(height: 10),
                        Kutucuk(),
                      ]))),
              const Expanded(flex: 1, child: SizedBox()),
            ],
          ),
          const SizedBox(height: 20),
          const Footer(),
        ],
      ),
    );
  }

  Widget mobile() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Container(
              decoration: boxesdecorations(Colors.grey.shade200),
              child: Column(
                children: const [
                  Kutucuk(),
                ],
              )),
          const SizedBox(height: 20),
          const Footer(),
        ],
      ),
    );
  }
}
