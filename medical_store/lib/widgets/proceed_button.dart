import 'package:flutter/material.dart';

import '../const.dart';

class ProceedButton extends StatelessWidget {
  const ProceedButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 25,
      left: 110,
      child: GestureDetector(
        onTap: () {},
        child: Material(
          borderRadius: BorderRadius.circular(4),
          elevation: 4,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 8),
            decoration: BoxDecoration(
                color: Color(0xff008db9),
                borderRadius: BorderRadius.circular(4)),
            child: Text(
              'Proceed',
              style: primaryTextstyle,
            ),
          ),
        ),
      ),
    );
  }
}
