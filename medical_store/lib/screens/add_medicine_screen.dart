import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicalstore/const.dart';
import 'package:medicalstore/widgets/capture_button.dart';

class AddMedicineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appbar,
      body: Padding(
        padding: EdgeInsets.fromLTRB(size.width * 0.05555,
            size.height * 0.029585, size.width * 0.05555, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: size.height * 0.01479),
                height: 220,
                width: 220,
                color: Colors.red,
              ),
            ),
            //capture button
            CaptureButton(size: size),
          ],
        ),
      ),
    );
  }
}
