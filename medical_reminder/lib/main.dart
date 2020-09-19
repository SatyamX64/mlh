import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medical_reminder/constants.dart';
import 'package:medical_reminder/screens/home_page.dart';
import 'package:medical_reminder/screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      // To Prevent the App from going in Lanscape Mode, We lock it in Potrait
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      // This Allows us to change the Naviagtion and Status Bar Color of Device
      statusBarColor: kPrimary, //top bar color
      statusBarIconBrightness: Brightness.light, //top bar icons
      systemNavigationBarColor: Colors.white, //bottom bar color
      systemNavigationBarIconBrightness: Brightness.dark, //bottom bar icons
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: kSecondary,
          // floatingActionButton: FloatingActionButton(
          //   child: Icon(Icons.camera),
          //   onPressed: () {},
          //   backgroundColor: kPrimary,
          // ),
          body: HomePage(),
        ),
      ),
    );
  }
}
