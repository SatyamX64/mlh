import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:medical_reminder/models/bill.dart';
import 'package:medical_reminder/models/medicine.dart';

class BillProvider extends ChangeNotifier {
  List<Bill> bills = [
    Bill(
        name: 'Bill A',
        medicines: [
          Medicine(
            name: 'Paracetmol',
            days: [1, 1, 1, 1, 1, 1, 1],
            price: 23.5,
          ),
        ],
        totalPrice: 120.76,
        qrCode: null,
        billingTime: DateTime.now(),
        shopName: 'Manoj Medical'),
  ];

  void addBill(Bill bill) {
    bills.add(bill);
    notifyListeners();
  }
}
