import 'package:elektronik_gaming/Pages/signin.dart';
import 'package:elektronik_gaming/mainscreen.dart';
import 'package:elektronik_gaming/service/UserService/user_service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DesktopHeader extends StatefulWidget {
  static GlobalKey<State> desktopHeaderKey = GlobalKey();
  const DesktopHeader({Key? key}) : super(key: key);

  @override
  _DesktopHeaderState createState() => _DesktopHeaderState();
}

class _DesktopHeaderState extends State<DesktopHeader> {
  @override
  Widget build(BuildContext context) {
    return butonBar();
  }

  Widget butonBar() {
    return Container(
      width: double.infinity,
      height: 120,
      color: Colors.orange.shade700,
      child: Row(
        children: [
          Expanded(
            child: logo(),
          ),
          Expanded(
            child: Column(
              children: [
                const Expanded(child: SizedBox(), flex: 1),
                Row(
                  children: [
                    const Expanded(child: SizedBox()),
                    SignIn.girisYapildi
                        ? iconButon('profil', FontAwesomeIcons.user)
                        : iconButon('signin', FontAwesomeIcons.user),
                    const SizedBox(width: 5),
                    iconButon('sepet', FontAwesomeIcons.shoppingCart),
                    SignIn.girisYapildi
                        ? Row(
                            children: [
                              const SizedBox(width: 5),
                              iconButon(
                                  'cikisyap', FontAwesomeIcons.signOutAlt),
                              const SizedBox(width: 5),
                            ],
                          )
                        : const SizedBox(width: 5),
                  ],
                ),
                const Expanded(child: SizedBox()),
                Expanded(
                  child: Row(
                    children: basliklar(),
                  ),
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> basliklar() {
    return [
      const Expanded(child: SizedBox()),
      buton('anasayfa', 'ANASAYFA'),
      const SizedBox(width: 20),
      buton('kulaklık', 'KULAKLIKLAR'),
      const SizedBox(width: 20),
      buton('klavye', 'KLAVYELER'),
      const SizedBox(width: 20),
      buton('mouse', 'MOUSELER'),
      const SizedBox(width: 20),
      buton('koltuk', 'OYUNCU KOLTUKLARI'),
      const SizedBox(width: 20),
    ];
  }

  Widget buton(String deger, String baslik) {
    return Expanded(
      child: Container(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            MainScreen.selected = deger;
            MainScreen.globalKey.currentState!.setState(() {});
          },
          child: SizedBox(
            height: 50,
            child: Center(
              child: Text(
                baslik,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget logo() {
    return Container(
      height: 98, //Logo eklendiğinde => height: 100,
      color: Colors.orange.shade700,
      child: InkWell(
          onTap: () {
            MainScreen.selected = 'anasayfa';
            MainScreen.globalKey.currentState!.setState(() {});
          },
          child: Row(
            children: [
              const SizedBox(width: 40),
              const Text(
                'Elektronik',
                style: TextStyle(fontSize: 70, color: Colors.white),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: const [
                  Expanded(child: SizedBox()),
                  Text(
                    'Gaming',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ],
              ),
            ],
          )),
    );
  }

  Widget iconButon(String deger, IconData iconName) {
    return InkWell(
      onTap: () {
        if (deger == 'cikisyap') {
          UserService.signOut(context);
          SignIn.girisYapildi = false;
          setState(() {});
          MainScreen.selected = 'anasayfa';
          MainScreen.globalKey.currentState!.setState(() {});
        } else {
          MainScreen.selected = deger;
          MainScreen.globalKey.currentState!.setState(() {});
        }
      },
      child: FaIcon(
        iconName,
        color: Colors.white,
        size: 18,
      ),
    );
  }
}
