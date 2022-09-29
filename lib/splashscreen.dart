import 'dart:async';

import 'package:flutter/material.dart';
import 'package:phone_authentication/signup.dart';

class MySplashScreen extends StatefulWidget {
  static String id = 'splashscreen';

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MySignUp())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white, child: Image.asset("myimages/ncai.jpg"));
    // return (Container(
    //   width: double.infinity,
    //   decoration: BoxDecoration(
    //     image: DecorationImage(
    //       image: AssetImage("myimages/ncai.jpg"),
    //       fit: BoxFit.cover,
    //     ),
    //   ),
    //   // color: Colors.white,
    // ));
  }
}
