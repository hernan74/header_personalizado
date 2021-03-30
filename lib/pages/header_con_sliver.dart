import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:header_personalizado/pages/header_personalizado.dart';
import 'package:header_personalizado/wiget/item.dart';

class HeaderConSliver extends StatelessWidget {
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
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              floating: true,
              delegate: _SliverCustomHeaderDelegate(
                  minHeight: 300.0,
                  maxHeight: 300.0,
                  child: HeaderPageWidget())),
          SliverList(delegate: SliverChildListDelegate(items))
        ],
      ),
    );
  }
}

class _SliverCustomHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverCustomHeaderDelegate(
      {@required this.minHeight,
      @required this.maxHeight,
      @required this.child});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox(
      child: child,
    );
  }

  @override
  double get maxExtent => (minHeight > maxHeight) ? minHeight : maxHeight;

  @override
  double get minExtent => (maxHeight < minHeight) ? maxHeight : minHeight;

  @override
  bool shouldRebuild(_SliverCustomHeaderDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
