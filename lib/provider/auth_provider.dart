import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rumah_sakit/user/signin.dart';

final _fireAuth = FirebaseAuth.instance;

class AuthProvider extends ChangeNotifier {
  final form = GlobalKey<FormState>();

  var isLogin = true;
  var enteredUsername = '';
  var enteredEmail = '';
  var enteredPassword = '';

  void submit() async {
    final isValid = form.currentState!.validate();

    if (!isValid) {
      return;
    }

    form.currentState!.save();

    try {
      if (isLogin) {
        final UserCredential userCredential = await _fireAuth.signInWithEmailAndPassword(
          email: enteredEmail,
          password: enteredPassword,
        );
      } else {
        final UserCredential userCredential = await _fireAuth.createUserWithEmailAndPassword(
          email: enteredEmail,
          password: enteredPassword,
        );

        // Setelah mendaftar, Anda dapat menambahkan logika untuk menambahkan username ke profil pengguna.
        // Berikut hanya contoh bagaimana Anda dapat menyimpan username di Firebase.
        await userCredential.user!.updateDisplayName(enteredUsername);
      }
    } catch (e) {
      if (e is FirebaseAuthException) {
        if (e.code == 'email-already-in-use') {
          print("Email already in use");
        }
        // Anda dapat menangani pengecualian lain di sini sesuai kebutuhan aplikasi Anda.
      }
    }

    notifyListeners();
  }
}
