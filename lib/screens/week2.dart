import 'package:flutter/material.dart';
import 'package:meal_app/widget/drawer.dart';

class WeekPage2 extends StatelessWidget {
  static const String routeName = '/week2';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Week2"),
        ),
        drawer: AppDrawer(),
        body: Center(child: Text("Week 2")));
  }
}