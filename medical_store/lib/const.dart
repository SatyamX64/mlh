import 'package:flutter/material.dart';
import 'package:medicalstore/models/medicine.dart';

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

List<Medicine> bill = [
  Medicine(
      name: 'Paracetamal',
      amount: 10,
      pricePerTablet: 12,
      morning: true,
      night: false,
      noon: true),
  Medicine(
      name: 'Sumo',
      amount: 5,
      pricePerTablet: 7,
      morning: true,
      night: false,
      noon: true),
  Medicine(
      name: 'Ciplox',
      amount: 2,
      pricePerTablet: 4,
      morning: true,
      night: false,
      noon: true),
  Medicine(
      name: 'Acilok',
      amount: 6,
      pricePerTablet: 10,
      morning: true,
      night: false,
      noon: true),
];
