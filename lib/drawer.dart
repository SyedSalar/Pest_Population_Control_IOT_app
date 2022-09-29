import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (Column(
      children: [
        SizedBox(
          height: 100,
        ),
        ListTile(
          title: Text('Camera1'),
          leading: Icon(
            Icons.camera_alt,
            color: Colors.green,
          ),
        ),
        ListTile(),
        ListTile()
      ],
    ));
  }
}
