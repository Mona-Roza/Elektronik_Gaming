import 'package:elektronik_gaming/Decoration/decoration.dart';
import 'package:elektronik_gaming/Decoration/sayfa_basi.dart';
import 'package:elektronik_gaming/Header-Footer/footer.dart';
import 'package:elektronik_gaming/Pages/signin.dart';
import 'package:elektronik_gaming/mainscreen.dart';
import 'package:elektronik_gaming/service/UrunService/urunmodel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Sepet extends StatefulWidget {
  const Sepet({Key? key}) : super(key: key);
  static GlobalKey<State> globalKey = GlobalKey();
  static bool siparisTamamlandi = false;
  static List<UrunModel> sepetList = [];
  static double top = 0;
  @override
  _SepetState createState() => _SepetState();
}

class _SepetState extends State<Sepet> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, info) {
      return info.deviceScreenType == DeviceScreenType.desktop
          ? desktop(context)
          : mobile(context);
    });
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
                    decoration: boxesdecorations(Colors.grey.shade200),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          liste(true),
                          Column(
                            children: [
                              const Divider(thickness: 2),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 10),
                                child: Column(
                                  children: [
                                    toplamSatiri(),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    siparisVer(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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

  Widget mobile(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              liste(false),
              Column(
                children: [
                  const Divider(thickness: 2),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 10),
                    child: Column(
                      children: [
                        toplamSatiri(),
                        const SizedBox(height: 20),
                        SizedBox(child: Center(child: siparisVer())),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget siparisDesktop(UrunModel model) {
    double fiyat = model.urunFiyat;
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              model.gorsel,
              width: 120,
              height: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 20),
            SizedBox(
              width: 250,
              child: Text(
                model.urunAdi,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const Expanded(child: SizedBox()),
            bedenList(model.selectedRadio),
            const Expanded(child: SizedBox()),
            Text(
              '$fiyat TL',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(width: 20),
            InkWell(
                onTap: () {
                  Sepet.sepetList.remove(model);
                  setState(() {});
                },
                child: const FaIcon(FontAwesomeIcons.trash, color: Colors.red)),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  Widget siparisMobile(UrunModel model) {
    double fiyat = model.urunFiyat;
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              model.gorsel,
              width: 120,
              height: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 300,
                  child: Text(
                    model.urunAdi,
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
                const SizedBox(height: 10),
                bedenList(model.selectedRadio),
                const SizedBox(height: 10),
                Text(
                  '$fiyat TL',
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(width: 20),
                InkWell(
                    onTap: () {
                      Sepet.sepetList.remove(model);
                      setState(() {});
                      Sepet.globalKey.currentState!.setState(() {});
                    },
                    child: const FaIcon(FontAwesomeIcons.trash,
                        color: Colors.red)),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  Widget toplamSatiri() {
    double toplam = 0.00;
    if (Sepet.sepetList.isNotEmpty) {
      Sepet.sepetList.map((e) {
        toplam += e.urunFiyat;
      }).toList();
      Sepet.top = toplam;
    } else {
      toplam = 0;
    } //burası çalışmıyor
    return Container(
      height: 60,
      decoration: boxesdecorations(Colors.black),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'TOPLAM',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: Colors.white),
            ),
            Text(
              '$toplam TL',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget siparisVer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          onPressed: () {
            if (Sepet.sepetList.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Sepetiniz boş!')));
            } else {
              if (SignIn.girisYapildi == false) {
                MainScreen.selected = 'uyeolmadandevamet';
                MainScreen.globalKey.currentState!.setState(() {});
              } else {
                MainScreen.selected = 'devamet';
                MainScreen.globalKey.currentState!.setState(() {});
              }
            }
          },
          color: Colors.black,
          child: const SizedBox(
            width: 200,
            height: 60,
            child: Center(
              child: Text(
                'SEPETİ ONAYLA',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget liste(bool isDesktop) {
    if (isDesktop == true) {
      if (Sepet.sepetList.isNotEmpty) {
        return Column(children: [
          ...Sepet.sepetList.map((e) => siparisDesktop(e))
        ]); //burada minHeight gibi bir şey olması gerekiyor
      } else {
        return const SizedBox(
            height: 500, child: Center(child: Text('Sepetiniz boş!')));
      }
    } else {
      if (Sepet.sepetList.isNotEmpty) {
        return Column(
          children: [...Sepet.sepetList.map((e) => siparisMobile(e))],
        );
      } else {
        return const Text('Sepetiniz boş!');
      }
    }
  }

  Widget bedenList(int selected) {
    switch (selected) {
      case 1:
        return const Text('S');

      case 2:
        return const Text('M');
      case 3:
        return const Text('L');
      case 4:
        return const Text('XL');

      case 5:
        return const Text('XXL');
      default:
        return const Text('Lütfen beden seçiniz!');
    }
  }
}
