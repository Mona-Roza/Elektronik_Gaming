import 'package:elektronik_gaming/Decoration/decoration.dart';
import 'package:elektronik_gaming/Decoration/sayfa_basi.dart';
import 'package:elektronik_gaming/Header-Footer/footer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class Iletisim extends StatefulWidget {
  const Iletisim({Key? key}) : super(key: key);

  @override
  _IletisimState createState() => _IletisimState();
}

String email = 'agdinn@gmail.com'; //değiştir

class _IletisimState extends State<Iletisim> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, info) {
        return info.deviceScreenType == DeviceScreenType.desktop
            ? Scaffold(body: desktop())
            : Scaffold(body: mobile());
      },
    );
  }

  Widget mobile() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 1000,
              decoration: boxesdecorations(Colors.grey.shade200),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      child: Text(
                        'Görüşleriniz bizler için önemli',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(height: 16),
                    hintTexts('İsim', 2),
                    const SizedBox(height: 16),
                    hintTexts('Email', 2),
                    const SizedBox(height: 16),
                    hintTexts('Mesaj', 25),
                    const SizedBox(height: 8),
                    gonder(double.infinity, 60.00),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Footer(),
        ],
      ),
    );
  }

  Widget desktop() {
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
                    height: 700,
                    decoration: boxesdecorations(Colors.grey.shade200),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        const SizedBox(
                          child: Text(
                            'Görüşleriniz bizler için önemli',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32.0),
                          child: Column(
                            children: [
                              const SizedBox(height: 16.0),
                              hintTexts('İsim', 1),
                              const SizedBox(height: 32.0),
                              hintTexts('Email', 1),
                              const SizedBox(height: 32.0),
                              hintTexts('Mesaj', 16),
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  const Expanded(child: SizedBox()),
                                  gonder(100, 45),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Expanded(flex: 1, child: SizedBox()),
              ],
            ),
            const SizedBox(height: 20),
            const Footer(),
          ],
        ),
      ),
    );
  }

  Widget hintTexts(String hintText, int boyut) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300, width: 2),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: TextField(
        maxLines: boyut,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget gonder(var en, double boy) {
    return Container(
      height: boy,
      width: en,
      decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(width: 2, color: Colors.black),
          borderRadius: BorderRadius.circular(4)),
      child: InkWell(
        onTap: () {
          setState(() {
            mail();
          });
        },
        child: const Center(
          child: Text(
            "GÖNDER",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  mail() async {
    if (await canLaunch("mailto:$email")) {
      await launch("mailto:$email");
    } else {
      throw 'Could not launch';
    }
  }
}
