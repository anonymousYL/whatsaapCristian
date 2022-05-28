import 'package:flutter/material.dart';

class viewCamera extends StatefulWidget {
  @override
  viewCameraState createState() => new viewCameraState();
}

class viewCameraState extends State<viewCamera> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Text("No tiene permisas para acceder ala camara"),
      ),
    );
  }
}
