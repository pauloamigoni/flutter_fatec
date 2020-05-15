import 'package:flutter/material.dart';
import 'package:f290_flutter_review_multi_screen/screens/new_page.dart';

import 'new_page.dart';
import 'new_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        title: Text('Flutter RW'),
      ),
      //Body
      body: Column(children: [
        RichText(
          text: TextSpan(
              text: 'Nível I  ',
              style: TextStyle(color: Colors.teal),
              children: [
                TextSpan(
                    text: 'Nível II  ',
                    style: TextStyle(color: Colors.redAccent, fontSize: 24)),
                TextSpan(
                    text: 'Nível III  ',
                    style: TextStyle(color: Colors.amber, fontSize: 36)),
              ]),
        ),
        GestureDetector(
          child: Container(
            child: Image.network('url'),
          ),
          onTap: () {
            Map foto = Map();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        NewPage(snapshot.data['photos'][index])));
          },
        )
      ]),
      //FAB
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Map<String, dynamic> objeto = Map();
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => NewPage(
                        fotoSelecionada: objeto,
                      )));
        },
      ),
    );
  }
}
