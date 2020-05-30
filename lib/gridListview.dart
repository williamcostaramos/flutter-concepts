import 'package:flutter/material.dart';

class PageGridListview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 4,
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: 50,
            ),
            Container(
              color: Colors.white,
              height: 50,
            ),
            Container(
              color: Colors.yellow,
              height: 50,
            ),
            Container(
              color: Colors.green,
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
