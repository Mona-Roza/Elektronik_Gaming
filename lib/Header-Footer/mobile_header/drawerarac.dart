import 'package:elektronik_gaming/Pages/signin.dart';
import 'package:elektronik_gaming/mainscreen.dart';
import 'package:elektronik_gaming/service/UserService/user_service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerArac extends StatefulWidget {
  const DrawerArac({Key? key}) : super(key: key);

  @override
  _DrawerAracState createState() => _DrawerAracState();
}

class _DrawerAracState extends State<DrawerArac> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
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
                        const SizedBox(width: 10),
                        iconButon('cikisyap', FontAwesomeIcons.signOutAlt),
                        const SizedBox(width: 10),
                      ],
                    )
                  : const SizedBox(width: 5),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Column(
              children: [
                const SizedBox(height: 2),
                buton('anasayfa', 'ANASAYFA'),
                const SizedBox(height: 2),
                buton('kulaklık', 'KULAKLIKLAR'),
                const SizedBox(height: 2),
                buton('klavye', 'KLAVYELER'),
                const SizedBox(height: 2),
                buton('mouse', 'MOUSELER'),
                const SizedBox(height: 2),
                buton('koltuk', 'OYUNCU KOLTUKLARI'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget iconButon(String deger, IconData iconName) {
    return InkWell(
      onTap: () {
        if (deger == 'cikisyap') {
          UserService.signOut(context);
          SignIn.girisYapildi = false;
          MainScreen.selected = 'anasayfa';
          MainScreen.globalKey.currentState!.setState(() {});
          MainScreen.globalKey.currentState!.setState(() {
            MainScreen.scaffoldKey.currentState!.openEndDrawer();
          });
        } else {
          MainScreen.selected = deger;
          MainScreen.globalKey.currentState!.setState(() {});
          MainScreen.globalKey.currentState!.setState(() {
            MainScreen.scaffoldKey.currentState!.openEndDrawer();
          });
        }
      },
      child: FaIcon(
        iconName,
        color: Colors.black,
        size: 18,
      ),
    );
  }

  Widget buton(String deger, String baslik) {
    return InkWell(
      onTap: () {
        MainScreen.selected = deger;
        MainScreen.globalKey.currentState!.setState(() {});
        MainScreen.globalKey.currentState!.setState(() {
          MainScreen.scaffoldKey.currentState!.openEndDrawer();
        });
      },
      child: Text(deger),
    );
  }
}
