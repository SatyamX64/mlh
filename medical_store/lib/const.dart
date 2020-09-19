import 'package:flutter/material.dart';

const primaryTextstyle = TextStyle(
    color: Color(0xfff1f1f1),
    fontSize: 18,
    fontFamily: 'Sen',
    fontWeight: FontWeight.bold);

const secondaryTextstyle = TextStyle(
    color: Color(0xff605656),
    fontSize: 16,
    fontFamily: 'Sen',
    fontWeight: FontWeight.bold);

final appbar = AppBar(
  backgroundColor: Color(0xff008db9),
  centerTitle: true,
  leading: Container(),
  title: Text(
    'Medi-Care',
    style: primaryTextstyle,
  ),
);
