import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../const.dart';
import 'baseContaine.dart';

class BillWidget extends StatelessWidget {
  const BillWidget({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: BaseContainer(
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(
            children: [
              Text.rich(TextSpan(
                  text: 'Bill No. 123\n',
                  style: secondaryTextstyle,
                  children: [
                    TextSpan(
                        text: '12/09/2020',
                        style: secondaryTextstyle.copyWith(
                            fontSize: 12, fontWeight: FontWeight.normal))
                  ])),
              Spacer(
                flex: 1,
              ),
              Text(
                'Rs 120',
                style: secondaryTextstyle,
              ),
              Padding(
                padding: EdgeInsets.only(left: size.width * 0.04222),
              ),
              SvgPicture.asset(
                'icons/view.svg',
                height: size.height * 0.0355,
                width: size.width * 0.06666,
              )
            ],
          ),
        ),
      ),
    );
  }
}
