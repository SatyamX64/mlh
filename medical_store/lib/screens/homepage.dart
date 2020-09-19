import 'package:flutter/material.dart';
import '../const.dart';
import '../widgets/baseContaine.dart';
import '../widgets/bill_widget.dart';
import '../widgets/create_scan_bill_button.dart';

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
            //button for creating a new bill or scan an old one
            GestureDetector(
              onTap: () {},
              child: BaseContainer(
                child: CreateBillButton(size: size),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: size.height * 0.02479)),
            //line to sepearate scan bill button and recent bills section
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(bottom: size.height * 0.01479),
              height: 1,
              color: Color(0xff605656),
            ),
            Center(
                child: Text(
              'Recent Bills',
              style: secondaryTextstyle.copyWith(fontSize: 20),
            )),
            Padding(padding: EdgeInsets.only(top: size.height * 0.02479)),
            //custom widget for each bill issued by the store head
            BillWidget(size: size)
          ],
        ),
      ),
    );
  }
}
