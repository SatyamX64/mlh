import 'package:flutter/material.dart';

import '../const.dart';

class CreateBillButton extends StatelessWidget {
  const CreateBillButton({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.only(top: size.height * 0.029585)),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: Color(0xff008db9),
                  borderRadius: BorderRadius.circular(40)),
              child: Center(
                child: Icon(
                  Icons.add,
                  color: Color(0xfff1f1f1),
                  size: 28,
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 5)),
          Text(
            'Create or Scan Bill',
            style: secondaryTextstyle,
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
        ],
      ),
    );
  }
}
