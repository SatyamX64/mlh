import 'package:flutter/material.dart';

import '../const.dart';

class AddMedicineButton extends StatelessWidget {
  const AddMedicineButton({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Material(
        borderRadius: BorderRadius.circular(4),
        elevation: 4,
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.1111, vertical: size.height * 0.01183),
          decoration: BoxDecoration(
              color: Color(0xff008db9), borderRadius: BorderRadius.circular(4)),
          child: Text(
            'Add Medicine',
            style: primaryTextstyle,
          ),
        ),
      ),
    );
  }
}
