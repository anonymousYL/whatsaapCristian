import 'package:flutter/material.dart';
import '../data.dart';

class viewCall extends StatefulWidget {
  @override
  viewCallState createState() => new viewCallState();
}

class viewCallState extends State<viewCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
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
            trailing: Image.asset(data[index]['call'].toString()),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                data[index]['profilePic'].toString(),
              ),
            ));
      },
    ));
  }
}
