import 'package:elektronik_gaming/Decoration/decoration.dart';
import 'package:elektronik_gaming/Decoration/sayfa_basi.dart';
import 'package:elektronik_gaming/Header-Footer/footer.dart';
import 'package:elektronik_gaming/service/UserService/user_model.dart';
import 'package:elektronik_gaming/service/UserService/user_service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);
  static GlobalKey<State> globalKey = GlobalKey();
  static bool secilenAdres = false;
  static bool secilenSiparis = false;
  static bool secilenSifre = false;

  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _comfirmPasswordController =
      TextEditingController();
  final TextEditingController _adresController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, info) {
      return info.deviceScreenType == DeviceScreenType.desktop
          ? desktop()
          : mobile();
    });
  }

  Widget sifreAlani(TextEditingController controller, String hint) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: boxesdecorations(Colors.white),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(15.0),
          icon: FaIcon(FontAwesomeIcons.lock, color: Colors.grey.shade400),
          hintText: hint,
        ),
      ),
    );
  }

  Widget adresAlani() {
    return Container(
      width: double.infinity,
      height: 110,
      decoration: boxesdecorations(Colors.white),
      child: TextField(
        maxLines: 5,
        controller: _adresController,
        keyboardType: TextInputType.text,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(10.0),
          filled: true,
          icon: FaIcon(
            FontAwesomeIcons.home,
            color: Colors.grey.shade400,
            size: 20,
          ),
        ),
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
                    decoration: boxesdecorations(Colors.grey.shade200),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          const Text('Profilim',
                              style: TextStyle(fontSize: 40)),
                          const SizedBox(height: 20),
                          Container(
                            decoration: boxesdecorations(Colors.grey.shade300),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  const Text('Adreslerim',
                                      style: TextStyle(fontSize: 35)),
                                  const SizedBox(height: 10),
                                  adreslerimContent(),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            decoration: boxesdecorations(Colors.grey.shade300),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  const Text('Siparişlerim',
                                      style: TextStyle(fontSize: 35)),
                                  siparislerimContent(),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            decoration: boxesdecorations(Colors.grey.shade300),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  const Text('Şifreyi Değiştir',
                                      style: TextStyle(fontSize: 35)),
                                  const SizedBox(height: 10),
                                  changePwContent(),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
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

  Widget mobile() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: boxesdecorations(Colors.grey.shade200),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    const Text('Profilim', style: TextStyle(fontSize: 40)),
                    const SizedBox(height: 20),
                    Container(
                      decoration: boxesdecorations(Colors.grey.shade300),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            const Text('Adreslerim',
                                style: TextStyle(fontSize: 35)),
                            const SizedBox(height: 10),
                            adreslerimContent(),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration: boxesdecorations(Colors.grey.shade300),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            const Text('Siparişlerim',
                                style: TextStyle(fontSize: 35)),
                            siparislerimContent(),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration: boxesdecorations(Colors.grey.shade300),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            const Text('Şifreyi Değiştir',
                                style: TextStyle(fontSize: 35)),
                            changePwContent(),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
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

  Widget adreslerimContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Kayıtlı Adresim: ', style: TextStyle(fontSize: 20)),
        const SizedBox(height: 10),
        Text(UserModel.adres ?? 'Hiç kayıtlı adresiniz yok!'),
        const SizedBox(height: 20),
        const Text('Adres Ekle:', style: TextStyle(fontSize: 20)),
        const SizedBox(height: 10),
        adresAlani(),
        const SizedBox(height: 10),
        InkWell(
          onTap: () async {
            UserService.addAddress(context, _adresController.text);
            UserModel.adres = _adresController.text;
            setState(() {});
            //buradaki setState işe yaramıyor kullanıcı bilgileri kullancı girip çıktıktan sonra değişiyor.
          },
          child: Container(
            width: 110,
            height: 40,
            decoration: boxesdecorations(Colors.black),
            child: const Center(
              child: Text(
                'ADRESİ EKLE',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget changePwContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sifreAlani(_passwordController, 'Yeni şifreyi giriniz.'),
        const SizedBox(height: 10),
        sifreAlani(_comfirmPasswordController, 'Yeni şifreyi tekrar giriniz.'),
        const SizedBox(height: 10),
        InkWell(
          onTap: () async {
            if (_comfirmPasswordController.text == _passwordController.text) {
              UserService.changePassword(context, _passwordController.text);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Şifreler eşleşmiyor!')));
            }
          },
          child: Container(
            width: 200,
            height: 40,
            decoration: boxesdecorations(Colors.black),
            child: const Center(
              child: Text(
                'Şifremi Değiştir',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget siparislerimContent() {
    return Container();
  }
}
