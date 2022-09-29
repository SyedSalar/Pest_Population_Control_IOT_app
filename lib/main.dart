import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:phone_authentication/home.dart';
import 'package:phone_authentication/signup.dart';
import 'package:phone_authentication/splashscreen.dart';
import 'package:phone_authentication/viewimage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late StreamSubscription<User?> user;
  void initState() {
    super.initState();
    user = FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
  }

  @override
  void dispose() {
    user.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: FirebaseAuth.instance.currentUser == null
          ? MySplashScreen.id
          : MyHomePage.id,
      routes: {
        MySplashScreen.id: (context) => MySplashScreen(),
        MySignUp.id: (context) => MySignUp(),
        MyHomePage.id: (context) => MyHomePage(),
        MyImage.id: (context) => MyImage(),
      },
      title: 'Splash Screen',
      theme: ThemeData(primarySwatch: Colors.green),
      home: MySplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
