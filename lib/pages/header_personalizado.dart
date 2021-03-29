import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:header_personalizado/wiget/header.dart';
import 'package:header_personalizado/wiget/item.dart';

class HeaderPage extends StatelessWidget {
  final items = <ItemModel>[
    new ItemModel(
        icon: FontAwesomeIcons.carCrash,
        titulo: 'Motor Accident',
        color1: Color(0xff6989F5),
        color2: Color(0xff906EF5),
        onPressed: () {}),
    new ItemModel(
        icon: FontAwesomeIcons.plus,
        titulo: 'Medical Emergency',
        color1: Color(0xff66A9F2),
        color2: Color(0xff536CF6),
        onPressed: () {}),
    new ItemModel(
        icon: FontAwesomeIcons.theaterMasks,
        titulo: 'Theft / Harrasement',
        color1: Color(0xffF2D572),
        color2: Color(0xffE06AA3),
        onPressed: () {}),
    new ItemModel(
        icon: FontAwesomeIcons.biking,
        titulo: 'Awards',
        color1: Color(0xff317183),
        color2: Color(0xff46997D),
        onPressed: () {}),
    new ItemModel(
        icon: FontAwesomeIcons.carCrash,
        titulo: 'Motor Accident',
        color1: Color(0xff6989F5),
        color2: Color(0xff906EF5),
        onPressed: () {}),
    new ItemModel(
        icon: FontAwesomeIcons.plus,
        titulo: 'Medical Emergency',
        color1: Color(0xff66A9F2),
        color2: Color(0xff536CF6),
        onPressed: () {}),
    new ItemModel(
        icon: FontAwesomeIcons.theaterMasks,
        titulo: 'Theft / Harrasement',
        color1: Color(0xffF2D572),
        color2: Color(0xffE06AA3),
        onPressed: () {}),
    new ItemModel(
        icon: FontAwesomeIcons.biking,
        titulo: 'Awards',
        color1: Color(0xff317183),
        color2: Color(0xff46997D),
        onPressed: () {}),
    new ItemModel(
        icon: FontAwesomeIcons.carCrash,
        titulo: 'Motor Accident',
        color1: Color(0xff6989F5),
        color2: Color(0xff906EF5),
        onPressed: () {}),
    new ItemModel(
        icon: FontAwesomeIcons.plus,
        titulo: 'Medical Emergency',
        color1: Color(0xff66A9F2),
        color2: Color(0xff536CF6),
        onPressed: () {}),
    new ItemModel(
        icon: FontAwesomeIcons.theaterMasks,
        titulo: 'Theft / Harrasement',
        color1: Color(0xffF2D572),
        color2: Color(0xffE06AA3),
        onPressed: () {}),
    new ItemModel(
        icon: FontAwesomeIcons.biking,
        titulo: 'Awards',
        color1: Color(0xff317183),
        color2: Color(0xff46997D),
        onPressed: () {}),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 180.0),
            child: ListItem(
              listaItems: items.map((e) => FadeInLeft(child: e)).toList(),
            ),
          ),
          HeaderPageWidget()
        ],
      ),
    );
  }
}

class HeaderPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HeaderWidget(
      titulo: 'Haz Solicitado',
      subTitulo: 'Asistencia Medica',
      color1: Color(0xff526BF6),
      color2: Color(0xff67ACF2),
      icon: FontAwesomeIcons.plus,
    );
  }
}
