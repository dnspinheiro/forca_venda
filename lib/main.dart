import 'package:flutter/material.dart';

import 'package:forca_venda/LoginScreen.dart';
import 'package:forca_venda/SplashScreen.dart';
import 'package:forca_venda/OnBoarding.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme:
          ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: <String, WidgetBuilder> {
        '/intro': (BuildContext context) => new OnBoarding(),
        '/login': (BuildContext context) => new LoginScreen(),
      },
      // home: OnBoarding(),
      // home: Container(child: LoginScreen()),
    );
  }
}