import 'package:flutter/material.dart';

import '../const.dart';

class ProceedButton extends StatelessWidget {
  const ProceedButton({
    Key key,
    this.onTap,
  }) : super(key: key);

  final Function onTap;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
      bottom: size.height * 0.03698,
      left: size.width * 0.3055,
      child: GestureDetector(
        onTap: onTap,
        child: Material(
          borderRadius: BorderRadius.circular(4),
          elevation: 4,
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.1111,
                vertical: size.height * 0.01183),
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
