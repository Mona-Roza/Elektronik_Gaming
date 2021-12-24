import 'package:elektronik_gaming/Decoration/decoration.dart';
import 'package:elektronik_gaming/mainscreen.dart';
import 'package:elektronik_gaming/service/UserService/user_model.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DevamEt extends StatefulWidget {
  const DevamEt({Key? key}) : super(key: key);

  @override
  _DevamEtState createState() => _DevamEtState();
}

class _DevamEtState extends State<DevamEt> {
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
        child: Row(
          children: [
            const Expanded(flex: 1, child: SizedBox()),
            Expanded(
                flex: 5,
                child: Container(
                  decoration: boxesdecorations(Colors.grey.shade200),
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        child: Container(
                          decoration: boxesdecorations(Colors.grey.shade400),
                          child: Column(
                            children: [
                              //buraya kvkk metni gelecek??
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            const Expanded(flex: 1, child: SizedBox()),
          ],
        ),
      ),
    );
  }

  Widget mobile() {
    return Container();
  }

  Widget adresim() {
    if (UserModel.adres == null) {
      return Container(
        decoration: boxesdecorations(Colors.grey.shade400),
        child: Column(
          children: [
            const Text('Hiç kayıtlı adresiniz yok'),
            Container(
              decoration: boxesdecorations(Colors.black),
              child: InkWell(
                onTap: () {
                  MainScreen.selected = 'profil';
                  MainScreen.globalKey.currentState!.setState(() {});
                },
                child: const Text(
                  'ADRES EKLE',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        decoration: boxesdecorations(Colors.grey.shade400),
        child: Text(UserModel.adres ?? 'Hiç kayıtlı adresiniz yok'),
      );
    }
  }
}
