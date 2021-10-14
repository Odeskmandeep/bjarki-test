import 'package:flutter/material.dart';
import 'package:flutter_figmademo/UIScreens/Home.dart';
import 'Resources/MyTheme.dart';
import 'UIScreens/Splash.dart';
import 'Resources/MyRoute.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode:ThemeMode.system,
      theme:MyTheme.lightTheme(context),
      darkTheme:MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      home:Splash(),
      routes: {
        MyRoute.splashRoute : (context) => Splash(),
        MyRoute.homeRoute : (context) => Home(),


      },
    );
  }
}

