import 'package:flutter/material.dart';
import 'package:meal_app/routes/Routes.dart';
import 'package:meal_app/screens/week.dart';
import 'package:meal_app/screens/week2.dart';

void main() {
  runApp(MyApp());
}

const title = "Meal App";

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      home: WeekPage1(),
      routes: {
      Routes.week1: (context) => WeekPage1(),
      Routes.week2: (context) => WeekPage2(),

      }
    );
  }


}


