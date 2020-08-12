import 'package:flutter/material.dart';
import 'package:meal_app/screens/day_screen.dart';
import 'package:meal_app/widget/drawer.dart';

class WeekPage1 extends StatelessWidget {
  static const String routeName = '/week1';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Week1"),
        ),
        drawer: AppDrawer(),
        body: _myListView(context)

        // Center(child: Text("Week1"))
        );
  }

  Widget _myListView(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        context: context,
        tiles: [
          ListTile(
              title: Text('Monday'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DayPage()),
                );
              }),
          ListTile(
            title: Text('Tuesday'),
          ),
          ListTile(
            title: Text('Wednesday'),
          ),
          ListTile(
            title: Text('Thursday'),
          ),
          ListTile(
            title: Text('Friday'),
          ),
          ListTile(
            title: Text('Sartuday'),
          ),
          ListTile(
            title: Text('Sunday'),
          ),
        ],
      ).toList(),
    );
  }
}
