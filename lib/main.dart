import 'package:flutter/material.dart';
import 'package:launchtime/HomePage.dart';
import 'package:launchtime/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primaryColor: getColor(mainColor),
        accentColor:accentColorSecond, 
      ),
      home: HomePage(),
    );
  }

    MaterialColor getColor(Color color){
    return    new MaterialColor(0xff08090A, <int,Color>{
    50:color,
    100:color,
    200:color,
    300:color,
    400:color,
    500:color,
    600:color,
    700:color,
    800:color,
    900:color
  });
  }
}

