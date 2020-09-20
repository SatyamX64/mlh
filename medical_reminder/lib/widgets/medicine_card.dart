import 'package:flutter/material.dart';
//base list card to use on profile screen or ambulance doctor or hospital screen

class MedicineCard extends StatelessWidget {
  final String title;
  MedicineCard({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      child: Container(
        height: size.height / 15,
        decoration: BoxDecoration(
            color: Color(0xFFF1F1F1),
            borderRadius: BorderRadius.circular(size.width / 90)),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: size.height / 40,
            ),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'Sen',
                  fontSize: size.width / 25,
                  color: Color(0xFF444444),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Icon(
              Icons.play_circle_filled,
              size: size.width / 20,
              color: Color(0xff37A794),
            ),
            SizedBox(
              width: size.height / 40,
            )
          ],
        ),
      ),
    );
  }
}
