import 'package:flutter/material.dart';

class statusImage extends StatelessWidget {
  const statusImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/cristian.jpg"),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  radius: 10,
                  child: Icon(
                    Icons.add,
                    size: 20,
                    color: Colors.white,
                  ))),
        ],
      ),
      title: Text(
        "Mi estado",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      subtitle: Text(
        "Añadir a mi estado",
        style: TextStyle(fontSize: 13, color: Colors.grey[900]),
      ),
    );
  }
}
