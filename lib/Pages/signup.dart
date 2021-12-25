import 'package:elektronik_gaming/Decoration/decoration.dart';
import 'package:elektronik_gaming/Decoration/sayfa_basi.dart';
import 'package:elektronik_gaming/Header-Footer/footer.dart';
import 'package:elektronik_gaming/mainscreen.dart';
import 'package:elektronik_gaming/service/UserService/user_service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  static final GlobalKey globalKey = GlobalKey();
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _isimController = TextEditingController();
  final TextEditingController _soyisimController = TextEditingController();
  final TextEditingController _telephoneController = TextEditingController();
  final TextEditingController _confirmpasswordController =
      TextEditingController();
  final TextEditingController _emailController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, info) {
        return info.deviceScreenType == DeviceScreenType.desktop
            ? Scaffold(body: desktop())
            : Scaffold(
                body: mobile(),
              );
      },
    );
  }

  Widget mailAlani() {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: boxesdecorations(Colors.white, Colors.orange.shade900),
      child: TextField(
        controller: _emailController,
        keyboardType: TextInputType.emailAddress,
        style: const TextStyle(color: Colors.black),
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(5.0),
          hintText: 'E-mailinizi Giriniz',
        ),
      ),
    );
  }

  Widget mailAlani2() {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: boxesdecorations(Colors.white, Colors.orange.shade900),
      child: TextField(
        controller: _emailController2,
        keyboardType: TextInputType.emailAddress,
        style: const TextStyle(color: Colors.black),
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(5.0),
          hintText: 'E-mailinizi Giriniz',
        ),
      ),
    );
  }

  Widget isimAlani() {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: boxesdecorations(Colors.white, Colors.orange.shade900),
      child: TextField(
        controller: _isimController,
        keyboardType: TextInputType.name,
        style: const TextStyle(color: Colors.black),
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(5.0),
          hintText: 'Adınızı Giriniz',
        ),
      ),
    );
  }

  Widget telefonAlani() {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: boxesdecorations(Colors.white, Colors.orange.shade900),
      child: TextField(
        controller: _telephoneController,
        keyboardType: TextInputType.name,
        style: const TextStyle(color: Colors.black),
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(5.0),
          hintText: 'Telefon numaranızı giriniz',
        ),
      ),
    );
  }

  Widget soyisimAlani() {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: boxesdecorations(Colors.white, Colors.orange.shade900),
      child: TextField(
        controller: _soyisimController,
        keyboardType: TextInputType.name,
        style: const TextStyle(color: Colors.black),
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(5.0),
          hintText: 'Soyadınızı Giriniz',
        ),
      ),
    );
  }

  Widget sifreAlani() {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: boxesdecorations(Colors.white, Colors.orange.shade900),
      child: TextField(
        controller: _passwordController,
        obscureText: true,
        style: const TextStyle(color: Colors.black),
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(5.0),
          hintText: 'Şifrenizi Giriniz',
        ),
      ),
    );
  }

  Widget sifrekabulAlani() {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: boxesdecorations(Colors.white, Colors.orange.shade900),
      child: TextField(
        controller: _confirmpasswordController,
        obscureText: true,
        style: const TextStyle(color: Colors.black),
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(5.0),
          hintText: 'Şifrenizi Tekrar Giriniz',
        ),
      ),
    );
  }

  Widget mobile() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              decoration:
                  boxesdecorations(Colors.grey.shade200, Colors.transparent),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: mobileContent(),
                  ),
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
        width: double.infinity,
        child: Column(
          children: [
            const SayfaBasi(),
            Row(
              children: [
                const Expanded(flex: 1, child: SizedBox()),
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: boxesdecorations(
                        Colors.grey.shade200, Colors.transparent),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              width: double.infinity,
                              height: 200,
                              decoration: boxesdecorations(
                                  Colors.white, Colors.orange.shade900),
                              child: Column(
                                children: [
                                  const Expanded(child: SizedBox()),
                                  const Text(
                                      'Zaten müşterimiz misiniz? Giriş yapın!'),
                                  const SizedBox(height: 15),
                                  girisYap(),
                                  const Expanded(child: SizedBox()),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            child: Column(
                              children: desktopContent(),
                            ),
                          ),
                        ),
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

  Widget kayitOl() {
    return Container(
      //kayıt ol butonu
      height: 45,
      width: 100,
      decoration: boxesdecorations(Colors.orange.shade900, Colors.transparent),
      child: InkWell(
        onTap: () async {
          UserService.signUp(
              context,
              _isimController.text,
              _soyisimController.text,
              _emailController.text,
              _telephoneController.text,
              _passwordController.text,
              _confirmpasswordController.text);
        },
        child: const Center(
            child: Text(
          'Kayıt Ol',
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }

  Widget girisYap() {
    return Container(
      height: 45,
      width: 100,
      decoration: boxesdecorations(Colors.orange.shade900, Colors.transparent),
      child: InkWell(
        onTap: () {
          MainScreen.selected = 'signin';
          MainScreen.globalKey.currentState!.setState(() {});
        },
        child: const Center(
            child: Text(
          'Giriş Yap',
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }

  Widget sifremiUnuttum() {
    return InkWell(
      child: const Text('Şifrenizi mi unuttunuz?'),
      onTap: () {
        showJoinAlert2(context);
      },
    );
  }

  List<Widget> desktopContent() {
    return [
      const SayfaBasi(),
      basliklar('Adınız'),
      const SizedBox(height: 5),
      isimAlani(),
      const SizedBox(height: 15),
      basliklar('Soyadınız'),
      const SizedBox(height: 5),
      soyisimAlani(),
      const SizedBox(height: 15),
      basliklar('E-mailiniz'),
      const SizedBox(height: 5),
      mailAlani(),
      const SizedBox(height: 15),
      basliklar('Telefon Numaranız '),
      const SizedBox(height: 5),
      telefonAlani(),
      const SizedBox(height: 15),
      basliklar('Şifreniz'),
      const SizedBox(height: 5),
      sifreAlani(),
      const SizedBox(height: 15),
      basliklar('Şifrenizi Tekrar Giriniz'),
      const SizedBox(height: 5),
      sifrekabulAlani(),
      const SizedBox(height: 15),
      kayitOl(),
      const SizedBox(height: 20),
      sifremiUnuttum(),
      const SayfaBasi(),
    ];
  }

  Widget basliklar(String baslik) {
    return Row(
      children: [Text(baslik), const Expanded(child: SizedBox())],
    );
  }

  List<Widget> mobileContent() {
    return [
      const SizedBox(height: 50),
      basliklar('Adınız'),
      const SizedBox(height: 5),
      isimAlani(),
      const SizedBox(height: 15),
      basliklar('Soyadınız'),
      const SizedBox(height: 5),
      soyisimAlani(),
      const SizedBox(height: 15),
      basliklar('E-mailiniz'),
      const SizedBox(height: 5),
      mailAlani(),
      const SizedBox(height: 15),
      basliklar('Telefon Numaranız '),
      const SizedBox(height: 5),
      telefonAlani(),
      const SizedBox(height: 15),
      basliklar('Şifreniz'),
      const SizedBox(height: 5),
      sifreAlani(),
      const SizedBox(height: 15),
      basliklar('Şifrenizi Tekrar Giriniz'),
      const SizedBox(height: 5),
      sifrekabulAlani(),
      const SizedBox(height: 15),
      kayitOl(),
      const SizedBox(height: 20),
      const Text('Zaten müşterimiz misiniz? Giriş yapın!'),
      const SizedBox(height: 15),
      girisYap(),
      const SizedBox(height: 50),
    ];
  }

  void showJoinAlert(BuildContext context) async {
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
            decoration:
                boxesdecorations(Colors.grey.shade500, Colors.transparent),
            height: 70,
            width: 635,
            child: Center(
              child: Row(
                children: [
                  mailAlani2(),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      UserService.forgotPassword(
                          context, _emailController2.text);
                    },
                    child: Container(
                      decoration: boxesdecorations(
                          Colors.orange.shade900, Colors.transparent),
                      width: 100,
                      height: 50,
                      child: const Center(
                        child: Text(
                          'GÖNDER',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void showJoinAlert2(BuildContext context) async {
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
            decoration:
                boxesdecorations(Colors.grey.shade500, Colors.transparent),
            height: 70,
            width: 635,
            child: Center(
              child: Row(
                children: [
                  mailAlani2(),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      UserService.forgotPassword(
                          context, _emailController2.text);
                    },
                    child: Container(
                      decoration: boxesdecorations(
                          Colors.orange.shade900, Colors.transparent),
                      width: 100,
                      height: 50,
                      child: const Center(
                        child: Text(
                          'GÖNDER',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
