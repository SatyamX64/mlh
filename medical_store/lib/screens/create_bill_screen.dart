import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicalstore/const.dart';
import 'package:medicalstore/widgets/baseContaine.dart';
import 'package:medicalstore/widgets/proceed_button.dart';

class CreateBillScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appbar,
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add Medicines',
        backgroundColor: Color(0xff008db9),
        onPressed: () {},
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BaseContainer(
                    child: Container(
                  padding: EdgeInsets.all(4),
                  child: Row(
                    children: [
                      Text.rich(TextSpan(
                          text: 'Paracetamal\n',
                          style: secondaryTextstyle,
                          children: [
                            TextSpan(
                                text: '10 Tablets',
                                style: secondaryTextstyle.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal))
                          ])),
                      Spacer(
                        flex: 1,
                      ),
                      //button to remove the medicine from bill
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset('icons/delete.svg',
                            height: size.height * 0.0355,
                            width: size.width * 0.06666),
                      )
                    ],
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
