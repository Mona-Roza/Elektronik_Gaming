import 'dart:async';
import 'package:elektronik_gaming/mainscreen.dart';
import 'package:elektronik_gaming/service/UrunService/urunservice.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    cagirma();
    super.initState();
    Timer(
      const Duration(milliseconds: 500),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MainScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Text(
              'Elektronik Gaming',
              style: TextStyle(color: Colors.black, fontSize: 70),
            ),
          )),
    );
  }

  cagirma() async {
    await UrunService.urunCek();
  }
}
