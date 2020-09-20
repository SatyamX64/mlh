import 'package:flutter/material.dart';
import 'package:medical_reminder/constants.dart';
//base list card to use on profile screen or ambulance doctor or hospital screen

class MedicineCard extends StatelessWidget {
  final String title;
  MedicineCard({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      child: Container(
        height: size.height / 6,
        decoration: BoxDecoration(
            color: kPrimary,
            borderRadius: BorderRadius.circular(size.width / 90)),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Sen',
                fontSize: size.width / 25,
                color: kSecondary,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Table(
                border: TableBorder.all(color: Colors.black, width: 2),
                children: [
                  TableRow(children: [
                    FittedBox(
                        child: Container(
                      height: 2,
                      width: 4,
                      color: kSecondary,
                    )),
                    FittedBox(
                        child: Container(
                      height: 2,
                      width: 4,
                      color: kPrimary,
                    )),
                    FittedBox(
                        child: Container(
                      height: 2,
                      width: 4,
                      color: kSecondary,
                    )),
                    FittedBox(
                        child: Container(
                      height: 2,
                      width: 4,
                      color: kSecondary,
                    )),
                    FittedBox(
                        child: Container(
                      height: 2,
                      width: 4,
                      color: kSecondary,
                    )),
                    FittedBox(
                        child: Container(
                      height: 2,
                      width: 4,
                      color: kPrimary,
                    )),
                    FittedBox(
                        child: Container(
                      height: 2,
                      width: 4,
                      color: kSecondary,
                    ))
                  ]),
                  TableRow(children: [
                    FittedBox(
                        child: Container(
                      height: 2,
                      width: 4,
                      color: kSecondary,
                    )),
                    FittedBox(
                        child: Container(
                      height: 2,
                      width: 4,
                      color: kSecondary,
                    )),
                    FittedBox(
                        child: Container(
                      height: 2,
                      width: 4,
                      color: kPrimary,
                    )),
                    FittedBox(
                        child: Container(
                      height: 2,
                      width: 4,
                      color: kSecondary,
                    )),
                    FittedBox(
                        child: Container(
                      height: 2,
                      width: 4,
                      color: kSecondary,
                    )),
                    FittedBox(
                        child: Container(
                      height: 2,
                      width: 4,
                      color: kSecondary,
                    )),
                    FittedBox(
                        child: Container(
                      height: 2,
                      width: 4,
                      color: kSecondary,
                    ))
                  ]),
                  TableRow(children: [
                    FittedBox(
                        child: Container(
                      height: 2,
                      width: 4,
                      color: kPrimary,
                    )),
                    FittedBox(
                        child: Container(
                      height: 2,
                      width: 4,
                      color: kSecondary,
                    )),
                    FittedBox(
                        child: Container(
                      height: 2,
                      width: 4,
                      color: kPrimary,
                    )),
                    FittedBox(
                        child: Container(
                      height: 2,
                      width: 4,
                      color: kSecondary,
                    )),
                    FittedBox(
                        child: Container(
                      height: 2,
                      width: 4,
                      color: kPrimary,
                    )),
                    FittedBox(
                        child: Container(
                      height: 2,
                      width: 4,
                      color: kSecondary,
                    )),
                    FittedBox(
                        child: Container(
                      height: 2,
                      width: 4,
                      color: kPrimary,
                    ))
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
