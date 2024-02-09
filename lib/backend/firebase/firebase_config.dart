import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCDAjEGsHuOEJxhFhbLkNjN0eBrYCwL5EU",
            authDomain: "groceries-st8xpq.firebaseapp.com",
            projectId: "groceries-st8xpq",
            storageBucket: "groceries-st8xpq.appspot.com",
            messagingSenderId: "1009327500900",
            appId: "1:1009327500900:web:8679b8c5e64d28717b3971"));
  } else {
    await Firebase.initializeApp();
  }
}
