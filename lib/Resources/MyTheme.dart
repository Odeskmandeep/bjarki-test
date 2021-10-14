import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {


  static ThemeData lightTheme(BuildContext context) => ThemeData(
      cardColor: Colors.white,
      canvasColor: creamColor,
      buttonColor: appColor ,
      accentColor: appColor,
      primarySwatch: kPrimaryColor,
      fontFamily:GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
          elevation: 0.0,
          color: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.white),
          textTheme: Theme.of(context).textTheme
      )
  );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      primaryColorBrightness: Brightness.dark,
      cardColor: Colors.black,
      canvasColor: darkCreamColor,
      buttonColor: appColor ,
      accentColor: appColor,
      primarySwatch: kPrimaryColor,
      fontFamily:GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
          elevation: 0.0,
          color: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.white),
          textTheme: Theme.of(context).textTheme
      )
  );

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
  static Color appColor = Color(0xff1E4D3D);
  static MaterialColor kPrimaryColor =  MaterialColor(0xFF205DA9,
    const <int, Color>{
      50: const Color(0xFF205DA9),
      100: const Color(0xFF205DA9),
      200: const Color(0xFF205DA9),
      300: const Color(0xFF205DA9F),
      400: const Color(0xFF205DA9),
      500: const Color(0xFF205DA9),
      600: const Color(0xFF205DA9),
      700: const Color(0xFF205DA9),
      800: const Color(0xFF205DA9),
      900: const Color(0xFF205DA9),
    },);
}