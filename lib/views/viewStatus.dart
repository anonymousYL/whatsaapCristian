import 'package:flutter/material.dart';
import '../data.dart';
import 'statusImage.dart';

class viewStatus extends StatefulWidget {
  @override
  viewStatusState createState() => new viewStatusState();
}

class viewStatusState extends State<viewStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(children: <Widget>[
              statusImage(),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      title: Text(
                        data[index]['name'].toString(),
                        style: const TextStyle(fontSize: 15),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          data[index]['time'].toString(),
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          data[index]['profilePic'].toString(),
                        ),
                      ));
                },
              ),
            ])));
  }
}
