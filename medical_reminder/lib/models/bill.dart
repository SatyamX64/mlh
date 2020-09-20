import 'package:medical_reminder/models/medicine.dart';

class Bill {
  String qrCode;
  String name;
  String shopName;
  DateTime billingTime;
  double totalPrice;
  List<Medicine> medicines;
  Bill({this.medicines, this.name, this.totalPrice, this.qrCode,this.billingTime,this.shopName});
}
