import 'package:elektronik_gaming/Decoration/decoration.dart';
import 'package:elektronik_gaming/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Kutucuk extends StatefulWidget {
  const Kutucuk({Key? key}) : super(key: key);

  @override
  _KutucukState createState() => _KutucukState();
}

class _KutucukState extends State<Kutucuk> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, info) {
      return info.deviceScreenType == DeviceScreenType.desktop
          ? desktop()
          : mobile();
    });
  }

  Widget desktop() {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(flex: 1, child: SizedBox()),
            Expanded(
                child: kutucuk(
                    'Oyuncu Mouseleri', 'mouse', 500, 'assets/mouse/3.jpg')),
            const SizedBox(height: 20),
            Expanded(
              child: kutucuk('Oyuncu Kulaklıkları', 'kulaklik', 500,
                  'assets/kulaklık/5.jpg'),
            ),
            const SizedBox(height: 20),
            Expanded(
                child: kutucuk(
                    'Oyuncu Klavyeleri', 'klavye', 500, 'assets/klavye/8.png')),
            const SizedBox(height: 20),
            Expanded(
                child: kutucuk(
                    'Oyuncu Koltukları', 'koltuk', 500, 'assets/koltuk/2.png')),
            const Expanded(flex: 1, child: SizedBox()),
          ],
        ),
      ],
    );
  }

  Widget mobile() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        child: Column(
          children: [
            kutucuk('Oyuncu Mouseleri', 'mouse', 500, 'assets/mouse/3.jpg'),
            const SizedBox(height: 20),
            kutucuk('Oyuncu Kulaklıkları', 'kulaklik', 500,
                'assets/kulaklık/5.jpg'),
            const SizedBox(height: 20),
            kutucuk('Oyuncu Klavyeleri', 'klavye', 500, 'assets/klavye/8.png'),
            const SizedBox(height: 20),
            kutucuk('Oyuncu Koltukları', 'koltuk', 500, 'assets/koltuk/2.png'),
          ],
        ),
      ),
    );
  }

  Widget kutucuk(String kategori, String yonlendirme, var boy, String image) {
    return Container(
      height: boy,
      child: InkWell(
        onTap: () {
          MainScreen.selected = yonlendirme;
          MainScreen.globalKey.currentState!.setState(() {});
        },
        child: Column(
          children: [
            Image.asset(
              image,
              fit: BoxFit.fill,
            ),
            Container(
              decoration: boxesdecorations(Colors.white.withOpacity(0.5)),
              child: Center(
                child: Text(
                  kategori,
                  style: const TextStyle(fontSize: 30, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
      decoration: boxesdecorations(Colors.orange),
    );
  }
}
