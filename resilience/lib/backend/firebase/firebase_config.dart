import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDs7YDpFA4KNGNlHtazTWPjptvBFCIZUzk",
            authDomain: "resilience-2c885.firebaseapp.com",
            projectId: "resilience-2c885",
            storageBucket: "resilience-2c885.appspot.com",
            messagingSenderId: "393627280927",
            appId: "1:393627280927:web:dd6f239e85578cd588172a",
            measurementId: "G-VECW6TLMCR"));
  } else {
    await Firebase.initializeApp();
  }
}
