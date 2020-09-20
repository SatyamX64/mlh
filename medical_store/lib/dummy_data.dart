import 'package:medicalstore/models/medicine.dart';

import 'models/bill.dart';

List<Medicine> bill = [
  Medicine(
      name: 'Paracetamal',
      amount: 2,
      pricePerTablet: 12,
      morning: true,
      night: false,
      noon: true),
  Medicine(
      name: 'Azithromycin',
      amount: 4,
      pricePerTablet: 7,
      morning: true,
      night: false,
      noon: true),
  Medicine(
      name: 'Moov',
      amount: 5,
      pricePerTablet: 4,
      morning: true,
      night: false,
      noon: true),
];

List<Medicine> bill1 = [
  Medicine(
      name: 'Crocin',
      amount: 5,
      pricePerTablet: 10,
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
      name: 'B-casole',
      amount: 6,
      pricePerTablet: 8,
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

List<Medicine> bill2 = [
  Medicine(
      name: 'Disprin',
      amount: 6,
      pricePerTablet: 12,
      morning: true,
      night: false,
      noon: true),
  Medicine(
      name: 'Paracetamol',
      amount: 5,
      pricePerTablet: 7,
      morning: true,
      night: false,
      noon: true),
  Medicine(
      name: 'Ciplox',
      amount: 5,
      pricePerTablet: 4,
      morning: true,
      night: false,
      noon: true),
  Medicine(
      name: 'Acilok',
      amount: 3,
      pricePerTablet: 10,
      morning: true,
      night: false,
      noon: true),
];

List<Medicine> bill3 = [
  Medicine(
      name: 'Paracetamal',
      amount: 5,
      pricePerTablet: 12,
      morning: true,
      night: false,
      noon: true),
  Medicine(
      name: 'Sumo',
      amount: 7,
      pricePerTablet: 7,
      morning: true,
      night: false,
      noon: true),
  Medicine(
      name: 'Ciplox',
      amount: 2,
      pricePerTablet: 8,
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

List<Bill> bills = [
  Bill(bill: bill1, date: '11/09/2020', no: 1, total: 460),
  Bill(bill: bill2, date: '3/09/2020', no: 2, total: 345),
  Bill(bill: bill3, date: '5/09/2020', no: 3, total: 225),
];
