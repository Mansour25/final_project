import 'package:final_project/core/static_data.dart';
import 'package:final_project/log_in.dart';
import 'package:final_project/Tap/map_page.dart';
import 'package:final_project/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'homePage.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  Widget? firstScreen;
  await FirebaseAuth.instance.authStateChanges().listen((User? user) {
    if (user == null) {
      firstScreen = LogInPage();
      print('User is currently signed out!');
    } else {
      firstScreen = homePage();
      print('User is signed in!');
    }
  });

  runApp(MyApp(firstScreen!));
}

class MyApp extends StatelessWidget {
  Widget firstWidget;

  MyApp(this.firstWidget); // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCustomSplashScreen(firstWidget),
    );
  }
}
