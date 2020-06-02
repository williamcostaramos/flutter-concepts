import 'package:flutter/material.dart';

class PageDrawerListview extends StatelessWidget {
  var musicas= [
    "LIBERDADE PROVISÓRIA",
    "AÍ EU BEBO",
    "BEBI MINHA BICICLETA",
    "CHEIROSA",
    "MILU",
    "SOME QUE ELE VEM ATRÁS",
    "MENTIRA",
    "NA CAMA QUE EU PAGUEI",
    "ÁGUA COM AÇÚCAR",
    "SUPERA",
    "Audio",
    "RELÓGIO PARADO",
    "MEDALHA DE PRATA",
    "SHOW DE RECAÍDA",
    "CONTATINHO",
    "3 BATIDAS",
    "@ISA",
    "CASAL MODÃO",
    "QUANDO A BAD BATER",
    "TIJOLÃO",
    "SEÑORITA"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer com Listview"),
        leading: Icon(Icons.menu),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text("cabecalho"),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            ListTile(
              leading: Icon(Icons.music_video),
              title: Text("Hilsong"),
              trailing: Icon(Icons.play_circle_filled),
            ),
            ListTile(
              leading: Icon(Icons.music_video),
              title: Text("Hilsong"),
              trailing: Icon(Icons.play_circle_filled),
            ),
            ListTile(
              leading: Icon(Icons.music_video),
              title: Text("Hilsong"),
              trailing: Icon(Icons.play_circle_filled),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: musicas.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.music_video),
            title: Text('${musicas[index]}'),
            trailing: Icon(Icons.play_circle_filled),
          );
        },
      ),
    );
  }
}
