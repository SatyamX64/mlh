import 'package:flutter/material.dart';
import 'package:medicalstore/const.dart';
import 'package:medicalstore/dummy_data.dart';
import 'package:medicalstore/models/bill.dart';
import 'package:medicalstore/models/medicine.dart';
import 'package:medicalstore/screens/homepage.dart';
import 'package:medicalstore/widgets/baseContaine.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class BillingScreen extends StatefulWidget {
  final List<Medicine> bill;
  BillingScreen(this.bill);

  @override
  _BillingScreenState createState() => _BillingScreenState();
}

class _BillingScreenState extends State<BillingScreen> {
  int total = 0;
  @override
  void initState() {
    super.initState();
    for (int i = 0; i < widget.bill.length; i++) {
      total += widget.bill[i].amount * widget.bill[i].pricePerTablet;
    }
  }

  // generateQR(){

  // }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: appbar,
        //print button
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.print),
          backgroundColor: Color(0xff008db9),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(size.width * 0.05555,
              size.height * 0.029585, size.width * 0.05555, 0),
          child: Column(
            children: [
              Text(
                'Bill Detail',
                style: secondaryTextstyle,
              ),
              Padding(padding: EdgeInsets.only(top: size.height * 0.029585)),
              Center(
                  child: Image.asset(
                'images/qr.png',
                height: 200,
              )),
              Text(
                'Ask the customer to scan this code',
                style: secondaryTextstyle.copyWith(
                    fontSize: 12, fontWeight: FontWeight.normal),
              ),
              Padding(padding: EdgeInsets.only(top: size.height * 0.029585)),
              Text(
                'Mohan Medical Store',
                style: secondaryTextstyle,
              ),
              Padding(padding: EdgeInsets.only(top: size.height * 0.029585)),
              //return the list of all medicines in the bill
              BaseContainer(
                child: Container(
                  width: double.maxFinite,
                  height: widget.bill.length > 5
                      ? 150
                      : widget.bill.length.toDouble() * 30,
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, i) {
                      return Container(
                        padding: EdgeInsets.all(4),
                        margin: EdgeInsets.only(bottom: 5),
                        child: Row(
                          children: [
                            Text(
                              '${widget.bill[i].name}',
                              style: secondaryTextstyle.copyWith(
                                  fontSize: 14, fontWeight: FontWeight.normal),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Text(
                                '${widget.bill[i].amount * widget.bill[i].pricePerTablet}')
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              //display total price
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 12, top: 10),
                  child: Text(
                    'Total: $total',
                    style: secondaryTextstyle,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: size.height * 0.039585)),
              //confirm the bill and go to home page
              GestureDetector(
                onTap: () async {
                  await show();
                  if (goBack == true) {
                    bills.add(Bill(
                        bill: bill,
                        date: '18/09/2020',
                        no: bills[bills.length - 1].no + 1,
                        total: total));
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Homepage(),
                        ));
                  }
                },
                child: Material(
                  borderRadius: BorderRadius.circular(4),
                  elevation: 4,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.1111,
                        vertical: size.height * 0.01183),
                    decoration: BoxDecoration(
                        color: Color(0xff008db9),
                        borderRadius: BorderRadius.circular(4)),
                    child: Text(
                      'Go Back',
                      style: primaryTextstyle,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool goBack = false;
  //dialog function for go back button
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
                    'Are you sure you want to go back',
                    style: secondaryTextstyle.copyWith(fontSize: 14),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.029585),
                  ),
                  GestureDetector(
                    onTap: () {
                      goBack = true;
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
