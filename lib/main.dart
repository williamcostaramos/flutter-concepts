import 'package:flutter/material.dart';
import 'package:flutter_nivel1/componet.dart';
import 'package:flutter_nivel1/drawer.dart';
import 'package:flutter_nivel1/gridListview.dart';
import 'package:flutter_nivel1/listview.dart';
import 'package:flutter_nivel1/listviewDinamica.dart';
import 'package:flutter_nivel1/listview_horizontal.dart';
import 'package:flutter_nivel1/viagem.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  buttonAction() {
    print("fui clicado");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/home": (context) => PageViagem(),
        "/listagemDinamica": (context) => PageListviewDinamica()
      },
      initialRoute: '/home',
    );
  }
}
