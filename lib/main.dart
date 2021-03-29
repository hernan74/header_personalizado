import 'package:flutter/material.dart';
import 'package:header_personalizado/pages/header_con_sliver.dart';
import 'package:header_personalizado/pages/header_personalizado.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' Titulo',
      initialRoute: '/',
      routes: {'/': (_) => HeaderConSliver()},
    );
  }
}
