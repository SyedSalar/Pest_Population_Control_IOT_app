import 'package:flutter/material.dart';
import 'package:firebase_image/firebase_image.dart';

class MyImage extends StatelessWidget {
  String a = '';

  static var id;
  @override
  Widget build(BuildContext context) {
    a = 'gs://esp32cam-device.appspot.com/RecentData/recentphoto';
    // TODO: implement build
    return (Image(
      image: FirebaseImage(a),
      // Works with standard parameters, e.g.
      fit: BoxFit.fitWidth,
      width: 400, height: 400,
      // ... etc.
    ));
  }
}
