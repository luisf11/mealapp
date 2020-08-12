import 'package:flutter/material.dart';
import 'package:meal_app/routes/Routes.dart';


class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
 return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Weeks',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ), 
        _createDrawerItem(
          text:'week 1',
          onTap: () => 
              Navigator.pushReplacementNamed(context, Routes.week1)),
        _createDrawerItem(   
          text:'week 2',
          onTap: () => Navigator.pushReplacementNamed(context, Routes.week2)),
        ],
      ),
    );

  }


    Widget _createDrawerItem({String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(Icons.calendar_today),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
  
}