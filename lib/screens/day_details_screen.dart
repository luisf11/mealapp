import 'package:flutter/material.dart';
import 'package:meal_app/widget/drawer.dart';

class DayDetails extends StatelessWidget {
  static const String routeName = '/day_details';
  final String meal;
  final String mealName;

DayDetails({Key key, @required this.meal,@required this.mealName}) : super();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text(meal),
        ),
        drawer: AppDrawer(),
        body:_buildScreen(context,mealName) );
  }
}

Widget _buildScreen(BuildContext context,String mealName){
  return Container(
    child: Column(
      children: [
        Center(
          child: Text(
            mealName,
             style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
                fontWeight: FontWeight.w600
            ),
            )
            ),
            MyStatefulWidget()
      ],
    ),
  );





}



class Item {
  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}

class MyStatefulWidget extends StatefulWidget {

    MyStatefulWidget({Key key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
  }
  
 class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  List<Item> _data = generateItems(8);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
              title: Text(item.expandedValue),
              subtitle: Text('To delete this panel, tap the trash can icon'),
              trailing: Icon(Icons.delete),
              onTap: () {
                setState(() {
                  _data.removeWhere((currentItem) => item == currentItem);
                });
              }),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}


  
