import 'package:flutter/material.dart';
import '../services_data.dart';
import '../widgets/service_info_item.dart';
import '../models/service_type.dart';


class SelectedServiceInfoScreen extends StatelessWidget {
  final Color mainColor = Color(0xff278C3F);
  final Color mainColor2 = Color(0xff2CA449);
  final Color selectedColor = Color(0xffA9E230);

  @override
  Widget build(BuildContext context) {

    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final serviceTitle = 'Co-location';
    final serviceType = SERVICES_INFO.where((service) {
      return service.title.contains(serviceTitle);
    }).toList();


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
                              left: 120,
                          ),
                          child: Text(serviceTitle, style: TextStyle(
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
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60)
                    ),
                    gradient: new LinearGradient(colors: [selectedColor, mainColor])
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 115,
                    left: 100
                ),
                height: 50,
                child: RaisedButton(
                  color: Colors.white,
                  onPressed: () {},
                  child: const Text(
                    'Приобрести услугу',
                    style: TextStyle(fontSize: 20,
                    color: Colors.lightGreen)
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 250,
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                return ServiceInfoItem(
                    serviceType[index].title,
                    serviceType[index].description,
                    serviceType[index].serviceStructure
                );
              }, itemCount: serviceType.length,
            ),
          ),

        ],
      ),
    );
  }
}
