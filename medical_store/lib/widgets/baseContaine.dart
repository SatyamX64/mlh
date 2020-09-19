import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  final Widget child;
  BaseContainer({this.child});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Material(
      elevation: 4,
      color: Color(0xfff1f1f1),
      borderRadius: BorderRadius.circular(4),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.02777, vertical: size.height * 0.014792),
        child: child,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), color: Color(0xfff1f1f1)),
      ),
    );
  }
}
