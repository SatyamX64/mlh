import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Material(
      elevation: 4,
      color: Color(0xfff1f1f1),
      borderRadius: BorderRadius.circular(4),
      child: Container(
        padding: EdgeInsets.symmetric(),
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), color: Color(0xfff1f1f1)),
      ),
    );
  }
}
