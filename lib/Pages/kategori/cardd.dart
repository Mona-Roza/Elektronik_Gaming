import 'package:elektronik_gaming/Decoration/decoration.dart';
import 'package:elektronik_gaming/Pages/sepet/sepet.dart';
import 'package:elektronik_gaming/service/UrunService/urunmodel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Cardd extends StatefulWidget {
  final String isim;
  final double fiyat;
  final String resim;

  const Cardd({
    Key? key,
    required this.isim,
    required this.fiyat,
    required this.resim,
  }) : super(key: key);

  @override
  _CarddState createState() => _CarddState();
}

class _CarddState extends State<Cardd> {
  late int selectedRadio = 0;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, info) {
      return info.deviceScreenType == DeviceScreenType.desktop
          ? desktop(widget.isim, widget.fiyat, widget.resim)
          : mobile(widget.isim, widget.fiyat, widget.resim);
    });
  }

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  Widget desktop(String isim, double fiyat, String resim) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: double.infinity,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  resim,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              children: [
                Text(
                  isim,
                  style: const TextStyle(fontSize: 60),
                ),
                const Expanded(child: SizedBox()),
                radioButonu(),
                const Expanded(child: SizedBox()),
                Text('$fiyat TL', style: const TextStyle(fontSize: 30)),
                const Expanded(child: SizedBox()),
                sepetButonu(isim, fiyat, resim),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget mobile(String isim, double fiyat, String resim) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Image.asset(resim, fit: BoxFit.fill),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Center(
          child: Text(
            isim,
            style: const TextStyle(fontSize: 20),
          ),
        ),
        radioButonu(),
        const SizedBox(height: 20),
        Text('$fiyat TL', style: const TextStyle(fontSize: 20)),
        const SizedBox(height: 20),
        sepetButonu(isim, fiyat, resim),
      ],
    );
  }

  Widget radioButonu() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Radio(
                value: 1,
                groupValue: selectedRadio,
                onChanged: (val) {
                  setSelectedRadio(1);
                }),
            const Text('S'),
          ],
        ),
        Column(
          children: [
            Radio(
                value: 2,
                groupValue: selectedRadio,
                onChanged: (val) {
                  setSelectedRadio(2);
                }),
            const Text('M'),
          ],
        ),
        Column(
          children: [
            Radio(
                value: 3,
                groupValue: selectedRadio,
                onChanged: (val) {
                  setSelectedRadio(3);
                }),
            const Text('L')
          ],
        ),
        Column(
          children: [
            Radio(
                value: 4,
                groupValue: selectedRadio,
                onChanged: (val) {
                  setSelectedRadio(4);
                }),
            const Text('XL')
          ],
        ),
        Column(
          children: [
            Radio(
                value: 5,
                groupValue: selectedRadio,
                onChanged: (val) {
                  setSelectedRadio(5);
                }),
            const Text('XXL')
          ],
        ),
      ],
    );
  }

  Widget sepetButonu(String isim, double fiyat, String resim) {
    return Container(
      height: 75,
      color: Colors.black,
      child: InkWell(
        child: Row(
          children: const [
            Expanded(child: SizedBox()),
            Text(
              'SEPETE EKLE',
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            SizedBox(width: 20),
            FaIcon(FontAwesomeIcons.shoppingCart,
                size: 35, color: Colors.white),
            Expanded(child: SizedBox()),
          ],
        ),
        onTap: () {
          if (selectedRadio == 0) {
            showJoinAlert();
          } else {
            Sepet.sepetList
                .add(UrunModel.manuel(isim, fiyat, resim, selectedRadio));
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Ürün sepete eklendi!')));
          }
        },
      ),
    );
  }

  void showJoinAlert() async {
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
            decoration: boxesdecorations(Colors.grey.shade500),
            height: 100,
            width: 200,
            child: const Center(child: Text('Bir beden seçiniz!')),
          ),
        );
      },
    );
  }
}
