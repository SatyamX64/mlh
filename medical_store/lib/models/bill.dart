import 'package:medicalstore/models/medicine.dart';

class Bill {
  final List<Medicine> bill;
  final int no, total;
  final String date;
  Bill({this.no, this.total, this.date, this.bill});
}
