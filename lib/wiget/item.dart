import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListItem extends StatelessWidget {
  final List<Widget> listaItems;

  const ListItem({@required this.listaItems});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView(physics: BouncingScrollPhysics(), children: [
        SizedBox(
          height: 100.0,
        ),
        ...listaItems
      ]),
    );
  }
}

class ItemModel extends StatelessWidget {
  final IconData icon;
  final String titulo;
  final Color color1;
  final Color color2;
  final Function onPressed;

  const ItemModel(
      {this.icon,
      @required this.titulo,
      this.color1 = Colors.grey,
      @required this.onPressed,
      this.color2 = Colors.blueGrey});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          height: 100.0,
          width: double.infinity,
          decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black26, offset: Offset(4, 6), blurRadius: 10)
              ],
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [color1, color2])),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Stack(
              children: [
                _FondoItem(
                  icon: icon,
                ),
                _ContenidoItem(
                  icon: icon,
                  titulo: titulo,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _FondoItem extends StatelessWidget {
  final IconData icon;

  const _FondoItem({this.icon});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -30,
      right: -20,
      child: FaIcon(
        icon,
        size: 150.0,
        color: Colors.white70,
      ),
    );
  }
}

class _ContenidoItem extends StatelessWidget {
  final IconData icon;
  final String titulo;
  const _ContenidoItem({this.icon, this.titulo});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            width: 20.0,
          ),
          FaIcon(
            icon,
            color: Colors.white,
            size: 40.0,
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Text(
              titulo,
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 30.0,
            color: Colors.white,
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
    );
  }
}
