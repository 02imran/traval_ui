import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui/constants.dart';

import 'screens/screen1/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          brightness: Brightness.light,
          scaffoldBackgroundColor: Colors.white,
          textTheme:
              GoogleFonts.poppinsTextTheme().apply(displayColor: kTextColor),
              visualDensity: VisualDensity.adaptivePlatformDensity,),
      home: MyHomePage(),
    );
  }
}

