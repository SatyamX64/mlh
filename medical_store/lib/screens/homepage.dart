import 'package:flutter/material.dart';
import 'package:medicalstore/screens/create_bill_screen.dart';
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
      appBar: appbar,
      body: Padding(
        padding: EdgeInsets.fromLTRB(size.width * 0.05555,
            size.height * 0.029585, size.width * 0.05555, 0),
        child: Column(
          children: [
            //button for creating a new bill or scan an old one
            GestureDetector(
              onTap: show,
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
                  vertical: size.height * 0.059171),
              decoration: BoxDecoration(
                  color: Color(0xfff1f1f1),
                  borderRadius: BorderRadius.circular(4)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreateBillScreen(),
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
                        'Create new bill',
                        style: primaryTextstyle.copyWith(
                          fontSize: 16,
                        ),
                      )),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 8)),
                  Text(
                    'Or',
                    style: secondaryTextstyle,
                  ),
                  Padding(padding: EdgeInsets.only(top: 8)),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: size.width * 0.66666,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Color(0xff008db9),
                          borderRadius: BorderRadius.circular(4)),
                      child: Center(
                          child: Text(
                        'Scan old bill',
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
