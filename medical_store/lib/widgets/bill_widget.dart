import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicalstore/models/bill.dart';
import 'package:medicalstore/screens/view_bill_screen.dart';

import '../const.dart';
import 'baseContaine.dart';

class BillWidget extends StatelessWidget {
  const BillWidget({
    Key key,
    @required this.size,
    this.no,
    this.date,
    this.total,
    this.bill,
  }) : super(key: key);

  final Size size;
  final int no, total;
  final String date;
  final Bill bill;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ViewBillScreen(bill),
            ));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        child: BaseContainer(
          child: Padding(
            padding: EdgeInsets.all(4.0),
            child: Row(
              children: [
                Text.rich(TextSpan(
                    text: 'Bill No. $no\n',
                    style: secondaryTextstyle,
                    children: [
                      TextSpan(
                          text: date,
                          style: secondaryTextstyle.copyWith(
                              fontSize: 12, fontWeight: FontWeight.normal))
                    ])),
                Spacer(
                  flex: 1,
                ),
                Text(
                  'Rs $total',
                  style: secondaryTextstyle,
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.04222),
                ),
                SvgPicture.asset(
                  'icons/view.svg',
                  height: size.height * 0.0355,
                  width: size.width * 0.06666,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
