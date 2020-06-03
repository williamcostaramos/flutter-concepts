import 'package:flutter/material.dart';

class GerenciamentoEstado extends StatefulWidget {
  @override
  _GerenciamentoEstado createState() => _GerenciamentoEstado();
}

class _GerenciamentoEstado extends State<GerenciamentoEstado> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gerenciamento de Estado"),
      ),
      body: Container(
         color: Colors.red,
        child: Column(
          children: <Widget>[
            Text("Contador"),
            Text(contador.toString()),
            RaisedButton(
              child: Text("Adicionar"),
              onPressed: () {
                setState(() {
                  contador++;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
