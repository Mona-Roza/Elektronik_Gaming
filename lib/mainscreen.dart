import 'package:elektronik_gaming/Header-Footer/desktopheader.dart';
import 'package:elektronik_gaming/Header-Footer/mobile_header/drawerarac.dart';
import 'package:elektronik_gaming/Header-Footer/mobile_header/mobileheader.dart';
import 'package:elektronik_gaming/Pages/anasayfa/anasayfa.dart';
import 'package:elektronik_gaming/Pages/iletisim.dart';
import 'package:elektronik_gaming/Pages/kategori/kategori.dart';
import 'package:elektronik_gaming/Pages/kvkk.dart';
import 'package:elektronik_gaming/Pages/profil.dart';
import 'package:elektronik_gaming/Pages/sepet/devam_et.dart';
import 'package:elektronik_gaming/Pages/sepet/sepet.dart';
import 'package:elektronik_gaming/Pages/sepet/uye_olmadan_devam_et.dart';
import 'package:elektronik_gaming/Pages/signin.dart';
import 'package:elektronik_gaming/Pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainScreen extends StatefulWidget {
  static String selected = "anasayfa";
  static GlobalKey<State> globalKey = GlobalKey();
  static GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  MainScreen() : super(key: globalKey);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, info) {
      return info.deviceScreenType == DeviceScreenType.desktop
          ? Scaffold(
              body: Stack(
                children: [
                  body(),
                  const DesktopHeader(),
                ],
              ),
            )
          : Scaffold(
              key: MainScreen.scaffoldKey,
              body: Column(
                children: [
                  const MobileHeader(),
                  Expanded(child: body()),
                ],
              ),
              drawer: const DrawerArac(),
            );
    });
  }

  Widget body() {
    switch (MainScreen.selected) {
      case 'anasayfa':
        return const Anasayfa();

      case 'iletisim':
        return const Iletisim();

      case 'signup':
        return const SignUp();

      case 'signin':
        return const SignIn();

      case 'kulaklık':
        return Kategori(kategori: 'kulaklık');

      case 'klavye':
        return Kategori(kategori: 'klavye');

      case 'mouse':
        return Kategori(kategori: 'mouse');

      case 'koltuk':
        return Kategori(kategori: 'koltuk');

      case 'profil':
        return const Profil();

      case 'sepet':
        return const Sepet();

      case 'uyeolmadandevamet':
        return const UyeOlmadanDevamEt();

      case 'devamet':
        return const DevamEt();

      case 'KVKK':
        return const Kvkk();

      default:
        return const Anasayfa();
    }
  }
}
