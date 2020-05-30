import 'package:flutter/material.dart';

class PageListviewHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListviewHorizontal"),
      ),
      body: Container(
        height: 300,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 150,
              height: 300,
              color: Colors.red,
            ),
            Container(
              width: 150,
              height: 300,
              color: Colors.blue,
            ),
            Container(
              width: 150,
              height: 300,
              color: Colors.green,
            ),
            Container(
              width: 150,
              height: 300,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
