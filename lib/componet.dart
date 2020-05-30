import 'package:flutter/material.dart';

class Exemplo extends StatelessWidget {
  var title;
  var textButton;

  Function onPressed;
  Exemplo({this.title, this.onPressed, this.textButton});

  @override
  Widget build(BuildContext context) {
    if (this.title == null && this.textButton == null) {
      this.title = "Como atualizar o banco de dados";
      this.textButton = "Create database";
    }
    return Container(
      height: 100,
      color: Colors.red,
      margin: EdgeInsets.all(4),
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Text(title),
          FlatButton(
            child: Text(textButton),
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
