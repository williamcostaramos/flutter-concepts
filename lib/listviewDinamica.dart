import 'package:flutter/material.dart';

class PageListviewDinamica extends StatelessWidget {
  var contatos = [
    "Denize",
    "Aline",
    "Carliene",
    "Mario",
    "Keila",
    "Vitor",
    "Guilherme"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listagem Dinamica"),
      ),
      body: ListView.builder(
        itemCount: contatos.length,
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Text('${contatos[index]}'),
          );
        },
      ),
    );
  }
}
