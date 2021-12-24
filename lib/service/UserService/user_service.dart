import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elektronik_gaming/service/UserService/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserService {
  static var authService = FirebaseAuth.instance;
  static var service = FirebaseFirestore.instance;

  static Future signIn(BuildContext context, String email, String pw) async {
    try {
      await authService.signInWithEmailAndPassword(email: email, password: pw);
      await service
          .collection('users')
          .doc(authService.currentUser!.uid)
          .get()
          .then((value) => UserModel.fromSnapshot(value));

      return 1;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Kullanıcı bulunamadı!')));
      } else if (e.code == 'wrong-password') {
        return ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Parola yanlış!')));
      } else {
        return ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Bir şeyler yanlış gitti!')));
      }
    }
  }

  static Future signUp(
      BuildContext context,
      String isim,
      String soyisim,
      String email,
      String telefon,
      String password,
      String comfirmpassword) async {
    try {
      await authService.createUserWithEmailAndPassword(
          email: email, password: password);

      await service.collection('users').doc(authService.currentUser!.uid).set({
        'isim': isim,
        'soyisim': soyisim,
        'email': email,
        'telefon': telefon,
      });

      return ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Kayıt oldunuz!')));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('E-mail kullanılıyor!')));
      } else if (e.code == 'weak-password') {
        return ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Zayıf şifre!')));
      } else if (e.code == 'invalid-email') {
        return ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Geçersiz e-mail!')));
      } else {
        return ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Bir şeyler yanlış gitti!')));
      }
    }
  }

  static Future noEmailSignUp(BuildContext context, String isim, String soyisim,
      String telefon, String adres) async {
    try {
      await service.collection('users').doc().set({
        'isim': isim,
        'soyisim': soyisim,
        'telefon': telefon,
        'adres': adres
      });
    } on FirebaseAuthException catch (e) {
      return ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Bir şeyler yanlış gitti!')));
    }
  }

  static Future forgotPassword(BuildContext context, String email) async {
    try {
      await authService.sendPasswordResetEmail(email: email).then((value) =>
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Bağlantı mailinize gönserildi!'))));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Geçersiz e-mail!')));
      } else if (e.code == 'invalid-email') {
        return ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Kullanıcı bulunamadı!')));
      }
    }
  }

  static Future currentUserVerify(BuildContext context) async {
    try {
      if (authService.currentUser != null) {
        await service
            .collection('users')
            .doc(authService.currentUser!.uid)
            .get()
            .then((value) => UserModel.fromSnapshot(value));
        //buraya bir şeyler
      }
    } catch (e) {
      await signOut(context);
    }
  }

  static Future signOut(BuildContext context) async {
    await authService.signOut();
    return ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Çıkış yaptınız!')));
  }

  static Future changePassword(BuildContext context, String newPass) async {
    try {
      await authService.currentUser!.updatePassword(newPass);
      return ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Şifreniz değiştirilmiştir!')));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Zayıf şifre')));
      } else {
        return ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Bir şeyler yanlış gitti')));
      }
    }
  }

  static Future addAddress(BuildContext context, String adres) async {
    try {
      await service
          .collection('users')
          .doc(authService.currentUser!.uid)
          .update({'adres': adres});

      return ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Adresiniz eklendi!')));
    } on FirebaseAuthException catch (e) {
      return ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Bir şeyler yanlış gitti!')));
    }
  }
}
