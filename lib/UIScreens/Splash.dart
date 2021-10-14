import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_figmademo/UIScreens/Home.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Home())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.accentColor,

    );
  }
}