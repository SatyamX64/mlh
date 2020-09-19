import 'dart:convert';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:medical_reminder/constants.dart';
import 'package:medical_reminder/models/bill.dart';
import 'package:medical_reminder/widgets/bill_block.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                        child: Container(
                          decoration: BoxDecoration(
                            color: kPrimary,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          height: size.width/3.6,
                          child: Center(
                            child: SizedBox(
                              height: size.height / 12,
                              child: SvgPicture.asset('icons/qrcode.svg'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                            0, size.width / 360, size.height / 72, 0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: kPrimary,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          height: size.width/3.6,
                          child: Center(
                            child: SizedBox(
                              height: size.height / 12,
                              child: SvgPicture.asset('icons/report.svg'),
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
          _buildListView(),
        ],
      ),
    );
  }
}

Widget _buildListView() {
  List A = [0, 1, 2, 3];
  Bill bill = Bill();
  return SliverList(
    delegate: SliverChildBuilderDelegate(
      (BuildContext context, int index) {
        return BillBlock(bill);
      },
      childCount: A.length,
    ),
  );
}
