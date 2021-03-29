import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
              floating: true, delegate: _SliverCustomHeaderDelegate()),
          SliverList(delegate: SliverChildListDelegate(items))
        ],
      ),
    );
  }
}

class _SliverCustomHeaderDelegate extends SliverPersistentHeaderDelegate {

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
  
    throw UnimplementedError();
  }

  @override
  double get maxExtent => throw UnimplementedError();

  @override
  double get minExtent => throw UnimplementedError();

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    throw UnimplementedError();
  }
}
