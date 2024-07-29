import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBd_sPKeDKvwcdMjhPEqLjKKs2pSY0pPV0",
            authDomain: "wilaya-soccer-project.firebaseapp.com",
            projectId: "wilaya-soccer-project",
            storageBucket: "wilaya-soccer-project.appspot.com",
            messagingSenderId: "338029020073",
            appId: "1:338029020073:web:e4b61c62c6c702a0f37ab8",
            measurementId: "G-ZQBGT245TC"));
  } else {
    await Firebase.initializeApp();
  }
}
