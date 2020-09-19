import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicalstore/widgets/baseContaine.dart';

import '../const.dart';

class MedicineCard extends StatelessWidget {
  const MedicineCard({
    Key key,
    @required this.size,
    this.name,
    this.amount,
  }) : super(key: key);

  final Size size;
  final String name, amount;

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
        child: Container(
      padding: EdgeInsets.all(4),
      child: Row(
        children: [
          Text.rich(
              TextSpan(text: '$name\n', style: secondaryTextstyle, children: [
            TextSpan(
                text: '$amount Tablets',
                style: secondaryTextstyle.copyWith(
                    fontSize: 12, fontWeight: FontWeight.normal))
          ])),
          Spacer(
            flex: 1,
          ),
          //button to remove the medicine from bill
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset('icons/delete.svg',
                height: size.height * 0.0355, width: size.width * 0.06666),
          )
        ],
      ),
    ));
  }
}
