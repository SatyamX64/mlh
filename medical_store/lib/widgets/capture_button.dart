import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CaptureButton extends StatelessWidget {
  const CaptureButton({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Material(
        borderRadius: BorderRadius.circular(size.width * 0.0833),
        elevation: 8,
        child: Container(
          width: size.width * 0.1333,
          height: size.height * 0.071,
          decoration: BoxDecoration(
              color: Color(0xff008db9),
              borderRadius: BorderRadius.circular(size.width * 0.0833)),
          child: Center(
            child: SvgPicture.asset(
              'icons/capture.svg',
              height: size.height * 0.04142,
              width: size.width * 0.0777,
              color: Color(0xfff1f1f1),
            ),
          ),
        ),
      ),
    );
  }
}
