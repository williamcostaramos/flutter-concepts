import 'package:flutter/material.dart';
import 'package:flutter_nivel1/componet.dart';
import 'package:flutter_nivel1/gridListview.dart';
import 'package:flutter_nivel1/listview.dart';
import 'package:flutter_nivel1/listview_horizontal.dart';

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
      home:PageGridListview()
    );
  }
}


