import 'package:flutter/material.dart';
import '../services_data.dart';
import '../widgets/service_item.dart';
import '../widgets/service_type_item.dart';
import 'selected_service_screen.dart';
import '../widgets/message.dart';

class ServicesScreen extends StatefulWidget {

  @override
  _ServicesScreenState createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  Color mainColor = Color(0xff278C3F);
  Color mainColor2 = Color(0xff2CA449);
  Color selectedColor = Color(0xffA9E230);
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {

//    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
////    final serviceId = routeArgs['id'];
//    final serviceType = SERVICES_TYPES.where((type) {
//      return type.service.contains('s1');
//    }).toList();

    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                constraints: BoxConstraints.expand(height: 150),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              top: 50,
                            left: 145,
                            right: 90
                          ),
                          child: Text('Услуги', style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                          ),),
                        ),
                        IconButton(
                          padding: EdgeInsets.only(
                            top: 10
                          ),
                          icon: Icon(
                            Icons.search,
                          ),
                          iconSize: 25,
                          color: Colors.white,
                          splashColor: Colors.purple,
                          onPressed: () {},
                        ),
                      ],
                    ),

                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60)
                  ),
                  gradient: new LinearGradient(colors: [selectedColor, mainColor])
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 99
                ),
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: SERVICES.map(
                  (serData) => ServiceItem(
                    serData.id,
                    serData.title,
                    serData.imageUrl,
                  ),).toList(),
                )
              )
            ],
             ),
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        top: 5,
                        bottom: 15,
                      right: 300
                    ),
                    child: Text('Все услуги', style: TextStyle(
                      color: mainColor2,
                      fontSize: 18,
                    ),),
                  ),
                  SelectedServiceScreen()
              ],
              )
            )

        ],
      ),
    );
  }
}