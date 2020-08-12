import 'package:flutter/material.dart';
import 'package:meal_app/screens/day_details_screen.dart';
import 'package:meal_app/widget/drawer.dart';

class DayPage extends StatelessWidget {
  static const String routeName = '/day';


  List<String> meals = ['Breakfast', 'Snack 1', 'Lunch', 'Snack 2', 'Dinner'];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Monday"),
        ),
        drawer: AppDrawer(),
        body: _buildLayout(context));
  }

  Widget _buildLayout(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _buildNutrientsCard(),
          _myListView(context),
        ],
      ),
    );
  }

  Widget _myListView(BuildContext context) {
    return ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: meals.map(((meal) => _buildMealCard(meal,context))).toList());
  }

  Widget _buildNutrientsCard() {
    return new Card(
      child: new Container(
         height: 100.0,
        padding: new EdgeInsets.fromLTRB(10.0,5.0,10.0,5.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              'Total Nutrients',
               style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.w600
            ),
            ),
            Row(
    
              children: [
            Text('Calories: '),
            Spacer(),
            Text('Protein: ')

              ],
            ),
             Row(
              children: [
            Text('Fat: '),
            Spacer(),
            Text('Carbs: ')

              ],
            )
          ],
        ),
      ),
    );
  }

  

  Widget _buildMealCard(String meal,BuildContext context) {
    return new  InkWell(
      onTap: () {
          Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DayDetails(meal: meal,mealName: "Name of the meal",),
                ));
      },
    child: Container(
      height: 100.0,
      // padding: new EdgeInsets.fromLTRB(0,2.0,0,2.0),
      // margin: new EdgeInsets.all(2.0),
      child: Card(
margin: new EdgeInsets.all(5.0),
          child: Column(
        children: [
          Text(
            meal,
            style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
                fontWeight: FontWeight.w600),
          ),
           SizedBox(height: 5.0),
          Text(
            "Name of the meal",
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.w300),
          )
        ],
      )),
    ) ,
    );
    
   
  }
}
