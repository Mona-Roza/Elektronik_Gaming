import 'package:elektronik_gaming/Decoration/decoration.dart';
import 'package:elektronik_gaming/Decoration/sayfa_basi.dart';
import 'package:elektronik_gaming/Header-Footer/footer.dart';
import 'package:elektronik_gaming/Pages/sepet/sepet.dart';
import 'package:elektronik_gaming/mainscreen.dart';
import 'package:elektronik_gaming/service/UrunService/urunmodel.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class UyeOlmadanDevamEt extends StatefulWidget {
  const UyeOlmadanDevamEt({Key? key}) : super(key: key);

  @override
  _UyeOlmadanDevamEtState createState() => _UyeOlmadanDevamEtState();
}

class _UyeOlmadanDevamEtState extends State<UyeOlmadanDevamEt> {
  final TextEditingController _isimController = TextEditingController();
  final TextEditingController _soyisimController = TextEditingController();
  final TextEditingController _telephoneController = TextEditingController();
  final TextEditingController _adresController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, info) {
      return info.deviceScreenType == DeviceScreenType.desktop
          ? desktop()
          : mobile();
    });
  }

  Widget desktop() {
    return SingleChildScrollView(
      child: SizedBox(
        child: Column(
          children: [
            Row(
              children: [
                const Expanded(flex: 1, child: SizedBox()),
                Expanded(
                    flex: 5,
                    child: Container(
                      decoration: boxesdecorations(
                          Colors.grey.shade200, Colors.transparent),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SayfaBasi(),
                            Column(
                              children: content(true),
                            ),
                          ],
                        ),
                      ),
                    )),
                const Expanded(flex: 1, child: SizedBox()),
              ],
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }

  Widget mobile() {
    return SingleChildScrollView(
      child: Container(
        decoration: boxesdecorations(Colors.grey.shade200, Colors.transparent),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Column(
                children: content(false),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> content(bool isDesktop) {
    return [
      Center(
        child: Container(
          decoration:
              boxesdecorations(Colors.grey.shade400, Colors.transparent),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Text(
                    'Üye olmadan devam ediyorsunuz, isterseniz üye olup devam edebilirsiniz!'),
                const SizedBox(height: 10),
                Container(
                  width: 100,
                  height: 40,
                  decoration:
                      boxesdecorations(Colors.black, Colors.transparent),
                  child: InkWell(
                    onTap: () {
                      MainScreen.selected = 'signup';
                      MainScreen.globalKey.currentState!.setState(() {});
                    },
                    child: const Center(
                      child:
                          Text('ÜYE OL', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      const SizedBox(height: 20),
      const Text('Adınız'),
      const SizedBox(height: 10),
      yaziAlanlari(_isimController, TextInputType.name, 'Adınızı Giriniz'),
      const SizedBox(height: 20),
      const Text('Soyadınız'),
      const SizedBox(height: 10),
      yaziAlanlari(
          _soyisimController, TextInputType.name, 'Soyadınızı Giriniz'),
      const SizedBox(height: 20),
      const Text('Telefon Numaranız'),
      const SizedBox(height: 10),
      yaziAlanlari(_telephoneController, TextInputType.phone,
          'Telefon Numaranızı Giriniz'),
      const SizedBox(height: 20),
      const Text('Adresiniz'),
      const SizedBox(height: 10),
      adresAlani(),
      const SizedBox(height: 20),
      isDesktop
          ? Column(children: [...Sepet.sepetList.map((e) => siparisDesktop(e))])
          : Column(children: [...Sepet.sepetList.map((e) => siparisMobile(e))]),
      const SizedBox(height: 20),
      // Container(
      //   width: double.infinity,
      //   height: 150,
      //   decoration: boxesdecorations(Colors.grey.shade400),
      //   child: sozlesme(),
      // ), BU KISMA MESAFELİ SATIŞ SÖZLEŞMESİ??
      const SizedBox(height: 20),
      toplamSatiri(),
      const SizedBox(height: 20),
      odemeYap(),
    ];
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
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
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

  Widget adresAlani() {
    return Container(
      width: double.infinity,
      height: 110,
      decoration: boxesdecorations(Colors.white, Colors.transparent),
      child: TextField(
        maxLines: 5,
        controller: _adresController,
        keyboardType: TextInputType.multiline,
        style: const TextStyle(color: Colors.black),
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(10.0),
          fillColor: Colors.white,
          hintText: 'Adresinizi Giriniz',
        ),
      ),
    );
  }

  Widget yaziAlanlari(
      TextEditingController controller, TextInputType inputType, String hint) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: boxesdecorations(Colors.white, Colors.transparent),
      child: TextField(
        controller: controller,
        keyboardType: inputType,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(5.0),
          hintText: hint,
        ),
      ),
    );
  }

  Widget toplamSatiri() {
    double toplam = Sepet.top;

    return Container(
      height: 60,
      decoration: boxesdecorations(Colors.black, Colors.transparent),
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

  Widget odemeYap() {
    return Container(
      width: 150,
      height: 45,
      decoration: boxesdecorations(Colors.black, Colors.transparent),
      child: InkWell(
        onTap: () {},
        child: const Center(
          child: Text(
            'ÖDEME YAP',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
