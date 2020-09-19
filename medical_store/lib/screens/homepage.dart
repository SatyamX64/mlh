import 'package:flutter/material.dart';

import '../const.dart';
import '../widgets/create_scan_bill_button.dart';
import '../widgets/baseContaine.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff008db9),
        centerTitle: true,
        title: Text(
          'Medi-Care',
          style: primaryTextstyle,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(size.width * 0.05555,
            size.height * 0.029585, size.width * 0.05555, 0),
        child: Column(
          children: [
            BaseContainer(
              child: CreateBillButton(size: size),
            ),
          ],
        ),
      ),
    );
  }
}
