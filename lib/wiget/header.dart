import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderWidget extends StatelessWidget {
  final IconData icon;
  final String titulo;
  final String subTitulo;
  final Color color1;
  final Color color2;

  const HeaderWidget(
      {this.icon,
      @required this.titulo,
      @required this.subTitulo,
      this.color1 = Colors.blue,
      this.color2 = Colors.blueGrey});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      _BackgroundHeader(
        color1: color1,
        color2: color2,
      ),
      Positioned(
        top: -50,
        left: -50,
        child: _iconoFondo(icon),
      ),
      _ContenidoHeader(
        icon: icon,
        titulo: titulo,
        subTitulo: subTitulo,
      ),
      Positioned(
        right: -10,
        top: 40,
        child: RawMaterialButton(
          shape: CircleBorder(),
          padding: EdgeInsets.all(15.0),
          child: FaIcon(
            Icons.more_vert,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
    ]);
  }
}

class _ContenidoHeader extends StatelessWidget {
  final String titulo;
  final String subTitulo;
  final IconData icon;
  const _ContenidoHeader({this.titulo, this.subTitulo, this.icon});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          height: 80.0,
          width: double.infinity,
        ),
        Text(
          this.titulo,
          style: TextStyle(color: Colors.white70, fontSize: 25),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(subTitulo,
            style: TextStyle(
                color: Colors.white70,
                fontSize: 35,
                fontWeight: FontWeight.bold)),
        FaIcon(
          icon,
          size: 120.0,
          color: Colors.white,
        )
      ],
    );
  }
}

class _BackgroundHeader extends StatelessWidget {
  final Color color1;
  final Color color2;

  const _BackgroundHeader({this.color1, this.color2});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100.0)),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[color1, color2])),
    );
  }
}

Widget _iconoFondo(IconData icono) {
  return FaIcon(
    icono,
    color: Colors.white.withOpacity(0.3),
    size: 350.0,
  );
}
