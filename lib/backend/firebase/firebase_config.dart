import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDAyGJ4hfAB7QEAy20gTVLvPVu_LJiFbLU",
            authDomain: "coffee-shop-1vc4jn.firebaseapp.com",
            projectId: "coffee-shop-1vc4jn",
            storageBucket: "coffee-shop-1vc4jn.firebasestorage.app",
            messagingSenderId: "632525598908",
            appId: "1:632525598908:web:4f1eff6cebc22a4f02a0b9"));
  } else {
    await Firebase.initializeApp();
  }
}
