import 'package:flutter/material.dart';
import 'package:medicalstore/const.dart';
import 'package:medicalstore/dummy_data.dart';
import 'package:medicalstore/models/medicine.dart';
import 'package:medicalstore/screens/add_medicine_screen.dart';
import 'package:medicalstore/screens/billing_screen.dart';
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
          ProceedButton(
            onTap: medicines.isNotEmpty ? show : null,
          ),
          //list of medicines will be shown by listview builder
          Padding(
            padding: EdgeInsets.fromLTRB(
                size.width * 0.05555,
                size.height * 0.029585,
                size.width * 0.05555,
                size.height * 0.09437),
            child: ListView.builder(
              itemCount: medicines.length,
              itemBuilder: (context, i) {
                return Padding(
                  padding: EdgeInsets.only(bottom: size.height * 0.029585),
                  child: MedicineCard(
                    size: size,
                    name: medicines[i].name,
                    amount: '${medicines[i].amount}',
                    onTap: () {
                      medicines.remove(medicines[i]);
                      setState(() {});
                    },
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  show() {
    return showDialog(
      context: this.context,
      barrierDismissible: true,
      builder: (context) {
        final size = MediaQuery.of(context).size;
        return Dialog(
          child: FittedBox(
            fit: BoxFit.none,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05555,
                  vertical: size.height * 0.049171),
              decoration: BoxDecoration(
                  color: Color(0xfff1f1f1),
                  borderRadius: BorderRadius.circular(4)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Are you sure you want to Proceed',
                    style: secondaryTextstyle.copyWith(fontSize: 14),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.029585),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BillingScreen(bill),
                          ));
                    },
                    child: Container(
                      width: size.width * 0.66666,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Color(0xff008db9),
                          borderRadius: BorderRadius.circular(4)),
                      child: Center(
                          child: Text(
                        'Yes',
                        style: primaryTextstyle.copyWith(
                          fontSize: 16,
                        ),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
