import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB9Bg1Iernis2WiZYOTesZsLf2OTjwEM5I",
            authDomain: "todo-56c16.firebaseapp.com",
            projectId: "todo-56c16",
            storageBucket: "todo-56c16.appspot.com",
            messagingSenderId: "917834506719",
            appId: "1:917834506719:web:fccd8c605ce02c6144646a",
            measurementId: "G-Y865SZMND2"));
  } else {
    await Firebase.initializeApp();
  }
}
