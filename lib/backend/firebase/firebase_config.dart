import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAU46V3ee8uim6R5lujUocfcdjbg8Qz8vM",
            authDomain: "nurafit-nivy2j.firebaseapp.com",
            projectId: "nurafit-nivy2j",
            storageBucket: "nurafit-nivy2j.appspot.com",
            messagingSenderId: "617899167243",
            appId: "1:617899167243:web:34c27122303190d515010e"));
  } else {
    await Firebase.initializeApp();
  }
}
