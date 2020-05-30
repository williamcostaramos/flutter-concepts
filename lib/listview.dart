import 'package:flutter/material.dart';

class HomePageListview extends StatelessWidget {
  bool checarConfig() {
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configurações"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(title: Text("william Ramos")),
          ListTile(title: Text("Denize Queiroz")),
          ListTile(title: Text("Aline Ramos")),
          ListTile(title: Text("Carliene Costa")),
          ListTile(title: Text("Mario Ramos")),
          ListTile(title: Text("Keila Costa")),
          ListTile(title: Text("Antonia Costa")),
          ListTile(title: Text("Fance Costa")),
          ListTile(title: Text("Edilane Torres")),
          ListTile(title: Text("Lucas Costa")),
          ListTile(title: Text("Maria Ramos")),
          ListTile(title: Text("Nilton Ramos")),
          ListTile(title: Text("Eliane Ramos")),
          ListTile(title: Text("Cibele Ramos")),
          ListTile(title: Text("Kaline Ramos")),
        ],
      ),
    );
  }
}
