import 'package:flutter/material.dart';
import 'package:medicalstore/models/bill.dart';
import 'package:medicalstore/widgets/baseContaine.dart';

import '../const.dart';

class ViewBillScreen extends StatelessWidget {
  final Bill bill;
  ViewBillScreen(this.bill);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
                height: bill.bill.length > 5
                    ? 150
                    : bill.bill.length.toDouble() * 30,
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, i) {
                    return Container(
                      padding: EdgeInsets.all(4),
                      margin: EdgeInsets.only(bottom: 5),
                      child: Row(
                        children: [
                          Text(
                            '${bill.bill[i].name}',
                            style: secondaryTextstyle.copyWith(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Text(
                              '${bill.bill[i].amount * bill.bill[i].pricePerTablet}')
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
                  'Total: ${bill.total}',
                  style: secondaryTextstyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
