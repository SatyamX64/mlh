import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicalstore/const.dart';
import 'package:medicalstore/models/medicine.dart';
import 'package:medicalstore/screens/add_medicine_screen.dart';
import 'package:medicalstore/widgets/baseContaine.dart';
import 'package:medicalstore/widgets/medicine_card.dart';
import 'package:medicalstore/widgets/proceed_button.dart';

class CreateBillScreen extends StatefulWidget {
  @override
  _CreateBillScreenState createState() => _CreateBillScreenState();
}

class _CreateBillScreenState extends State<CreateBillScreen> {
  List<Medicine> medicines = [];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appbar,
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add Medicines',
        backgroundColor: Color(0xff008db9),
        onPressed: () async {
          Medicine medicine = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddMedicineScreen(),
              ));
          medicines.add(medicine);
        },
        child: Center(
            child: Icon(
          Icons.add,
          size: 35,
        )),
      ),
      body: Stack(
        children: [
          //tooltip
          Center(
            child: Text(
              'Add Medicines On this Screen',
              style: secondaryTextstyle.copyWith(
                  fontWeight: FontWeight.w100, color: Colors.grey),
            ),
          ),
          //proceed button
          ProceedButton(),
          //list of medicines will be shown by listview builder
          Padding(
            padding: EdgeInsets.fromLTRB(size.width * 0.05555,
                size.height * 0.029585, size.width * 0.05555, 0),
            child: ListView.builder(
              itemCount: medicines.length,
              itemBuilder: (context, i) {
                return Padding(
                  padding: EdgeInsets.only(bottom: size.height * 0.029585),
                  child: MedicineCard(
                    size: size,
                    name: medicines[i].name,
                    amount: medicines[i].amount,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
