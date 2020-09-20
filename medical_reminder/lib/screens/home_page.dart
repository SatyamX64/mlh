import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_reminder/constants.dart';
import 'package:medical_reminder/models/bill.dart';
import 'package:medical_reminder/models/medicine.dart';
import 'package:medical_reminder/provider/bill_provider.dart';
import 'package:medical_reminder/widgets/bill_block.dart';
import 'package:provider/provider.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final billProvider = Provider.of<BillProvider>(context);
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            backgroundColor: kPrimary,
            title: Text(
              'Medico',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: size.width / 12,
                  fontFamily: 'Purple'),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                SizedBox(height: size.height / 72),
                // Scan New Bill
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.height / 72,
                            vertical: size.width / 360),
                        child: GestureDetector(
                          onTap: () async {
                            String cameraScanResult = await scanner.scan();
                            print(cameraScanResult);
                            //TODO addBill here
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: kPrimary,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            height: size.width / 3.6,
                            child: Center(
                              child: SizedBox(
                                height: size.height / 12,
                                child: SvgPicture.asset('icons/qrcode.svg'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                            0, size.width / 360, size.height / 72, 0),
                        child: GestureDetector(
                          onTap: () {
                            billProvider.addBill(
                              Bill(
                                  name: 'Bill A',
                                  medicines: [
                                    Medicine(
                                      name: 'Paracetmol',
                                      days: [1, 1, 1, 1, 1, 1, 1],
                                      price: 23.5,
                                    ),
                                    Medicine(
                                      name: 'D-Cold',
                                      days: [1, 1, 1, 1, 1, 1, 1],
                                      price: 33.5,
                                    ),
                                  ],
                                  totalPrice: 120.76,
                                  qrCode: null,
                                  billingTime: DateTime.now(),
                                  shopName: 'Manoj Medical'),
                            );
                            // TODO addBill here
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: kPrimary,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            height: size.width / 3.6,
                            child: Center(
                              child: SizedBox(
                                height: size.height / 12,
                                child: SvgPicture.asset('icons/report.svg'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height / 36,
                ),
              ],
            ),
          ),
          SliverAppBar(
            pinned: true,
            title: Text(
              'Saved Bills',
              style: TextStyle(
                  color: kPrimary,
                  fontWeight: FontWeight.w900,
                  fontSize: size.height / 36),
            ),
            backgroundColor: kSecondary,
          ),
          _buildListView(billProvider.bills),
        ],
      ),
    );
  }
}

Widget _buildListView(List bills) {
  List Bills = [
    Bill(
        name: 'Bill A',
        medicines: [],
        totalPrice: 120.76,
        qrCode: null,
        billingTime: DateTime.now(),
        shopName: 'Mohan Medical'),
    Bill(
        name: 'Bill B',
        medicines: [],
        totalPrice: 454.26,
        qrCode: null,
        billingTime: DateTime.now(),
        shopName: 'Rohan Medical'),
    Bill(
        name: 'Bill C',
        medicines: [],
        totalPrice: 520.00,
        qrCode: null,
        billingTime: DateTime.now(),
        shopName: 'Sohan Medical'),
  ];
  return SliverList(
    delegate: SliverChildBuilderDelegate(
      (BuildContext context, int index) {
        return BillBlock(bills[index]);
      },
      childCount: bills.length,
    ),
  );
}
