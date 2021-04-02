import 'package:flutter/material.dart';
import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget listTileBuilder(String text,IconData icon,Function tapHandler){
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 24,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text(
              "Cooking Up",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Theme.of(context).primaryColor,
              ),
            ),
            color: Colors.yellow,
          ),
          SizedBox(
            width: 20,
          ),
          listTileBuilder('Meal', Icons.restaurant,(){Navigator.of(context).pushReplacementNamed('/');}),
          listTileBuilder('Filters', Icons.filter_alt,(){Navigator.of(context).pushReplacementNamed(FiltersScreen.FiltersScreenRoute);}),
        ],
      ),
    );
  }
}
