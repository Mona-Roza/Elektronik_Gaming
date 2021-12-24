import 'package:elektronik_gaming/Decoration/decoration.dart';
import 'package:elektronik_gaming/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, info) {
      return info.deviceScreenType == DeviceScreenType.desktop
          ? desktop()
          : mobile();
    });
  }

  Widget desktop() {
    return Container(
      decoration: boxesdecorations(Colors.grey.shade600),
      height: 100,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              MainScreen.selected = 'KVKK';
              MainScreen.globalKey.currentState!.setState(() {});
            },
            child: const Text(
              'Kişisel Verilerin Korunması ve İşlenmesi Politikası',
              style: TextStyle(fontSize: 10),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
              'Copyright © 2021 - 2031 Aurora İç Giyim | Tüm Hakları Saklıdır.'),
        ],
      ),
    );
  }

  Widget mobile() {
    return Container(
      decoration: boxesdecorations(Colors.grey.shade600),
      height: 100,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              MainScreen.selected = 'KVKK';
              MainScreen.globalKey.currentState!.setState(() {});
            },
            child: const Text(
              'Kişisel Verilerin Korunması ve İşlenmesi Politikası',
              style: TextStyle(fontSize: 10),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
              'Copyright © 2021 - 2031 Aurora İç Giyim | Tüm Hakları Saklıdır.'),
        ],
      ),
    );
  }
}
