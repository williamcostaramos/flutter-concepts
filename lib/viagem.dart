import 'package:flutter/material.dart';

class PageViagem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Guia de Viagem",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.red[500],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.red[700]),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Text("texto de exemplo"),
                  ),
                  Expanded(
                    child: Text("v.1.0"),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.swap_vert),
              title: Text("Lista Dinamica"),
              onTap: () {
                Navigator.pushNamed(context, "/listagemDinamica");
              },
            ),
            ListTile(
              leading: Icon(Icons.subdirectory_arrow_right),
              title: Text("Listview Horizontal"),
              onTap: () {
                Navigator.pushNamed(context, "/listviewHorizontal");
              },
            ),
            ListTile(
              leading: Icon(Icons.table_chart),
              title: Text("Listview Gridview"),
              onTap: () {
                Navigator.pushNamed(context, "/gridListview");
              },
            ),
            ListTile(
              leading: Icon(Icons.vertical_align_bottom),
              title: Text("Listview Vertical"),
              onTap: () {
                Navigator.pushNamed(context, "/homePageListview");
              },
            ),
            ListTile(
              leading: Icon(Icons.vertical_align_bottom),
              title: Text("Grenciamento de estado"),
              onTap: () {
                Navigator.pushNamed(context, "/stateManager");
              },
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Image(
              image: AssetImage('assets/image/brasil.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Porto de Galinhas",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Recife, Brasil",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text("9.98")
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  CallToAction(
                    icon: Icons.call,
                    textAction: "Ligar",
                    onPressed: () {},
                  ),
                  CallToAction(
                    icon: Icons.location_on,
                    textAction: "Localizacao",
                    onPressed: () {},
                  ),
                  CallToAction(
                    icon: Icons.share,
                    textAction: "Compartilhar",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: 380,
              child: Column(
                children: <Widget>[
                  Text(
                      'O Brasil é popular por suas belezas naturais, mas há também aqueles lugares construídos pelo homem que abrilhantam os nossos olhos. Nem todos eles são destinos muito explorados por turistas, mas outros recebem pessoas do mundo inteiro por todo o ano. Conheça a seguir locais maravilhosos para conhecer em nosso país, independentemente de sua popularidade, mas que você, amante de viagens, precisa conhecer um dia.'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CallToAction extends StatelessWidget {
  CallToAction(
      {this.onPressed, @required this.icon, @required this.textAction});

  Function onPressed;
  IconData icon;
  var textAction;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        child: Column(
          children: <Widget>[Icon(this.icon), Text(textAction)],
        ),
        onPressed: onPressed,
      ),
    );
  }
}
