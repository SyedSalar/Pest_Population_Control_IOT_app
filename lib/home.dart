import 'package:flutter/material.dart';
import 'package:phone_authentication/viewimage.dart';

class MyHomePage extends StatefulWidget {
  static var id;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Firebase Image Provider example'),
        ),
        body: Column(
          children: [
            Center(
                child: ElevatedButton(
                    onPressed: (() {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyImage(),
                            ));
                      });
                    }),
                    child: Text('Recent Photo'))),
          ],
        ));
  }
}
