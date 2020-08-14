import 'package:flutter/material.dart';
import 'list_of_selected_services.dart';
import '../widgets/service_list_item_for_category.dart';

class SelectedCategoryScreen extends StatefulWidget {
  @override
  _SelectedCategoryScreenState createState() => _SelectedCategoryScreenState();
}

class _SelectedCategoryScreenState extends State<SelectedCategoryScreen> {
  Color mainColor = Color(0xff278C3F);
  Color mainColor2 = Color(0xff2CA449);
  Color selectedColor = Color(0xffA9E230);


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[

          Container(
            constraints: BoxConstraints.expand(height: 275),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          top: 120,
                          left: 140,
                          right: 90
                      ),
                      child: Text('Для дома', style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),

                  ],
                ),

              ],
            ),
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage('https://images.pexels.com/photos/691467/art-smoke-light-lights-691467.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'))
            ),
          ),
          ListOfSelectedServices()
        ],
      ),
    );
  }
}
