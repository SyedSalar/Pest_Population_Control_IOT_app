import 'package:firebase_image/firebase_image.dart';
import 'package:flutter/material.dart';
import 'package:phone_authentication/drawer.dart';
import 'package:phone_authentication/viewimage.dart';
import 'package:firebase_storage/firebase_storage.dart';

String time = '', time1 = '';

class MyHomePage extends StatefulWidget {
  static String id = 'home';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String a = '';

  @override
  Widget build(BuildContext context) {
    a = 'gs://esp32cam-device.appspot.com/RecentData/recentPhoto.jpg';

// Get metadata properties

    return Scaffold(
        drawer: Drawer(
          child: MyDrawer(),
          backgroundColor: Colors.green.shade400,
        ),
        appBar: AppBar(
          title: Text('NCAI APP'),
        ),
        body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("myimages/agriculture_bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Center(
                  child: ElevatedButton(
                      onPressed: (() {
                        setState(() {
                          MetaData();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyImage(),
                              ));
                        });
                      }),
                      child: Text('Recent Photo')),
                ),
                // Image(
                //   image: FirebaseImage(a),
                //   // Works with standard parameters, e.g.
                //   fit: BoxFit.fitWidth,
                //   width: 400, height: 400,
                //   // ... etc.
                // ),

                // Text(time)
              ],
            )));
  }
}

MetaData() async {
  final storageRef = FirebaseStorage.instance.ref();
  final forestRef = storageRef.child("RecentData/recentPhoto.jpg");
  final forestRef1 = storageRef.child("data/recentphoto.jpg");
  final metadata = await forestRef.getMetadata();
  final metadata1 = await forestRef1.getMetadata();

  time = metadata.timeCreated.toString();
  time1 = metadata1.timeCreated.toString();
}
