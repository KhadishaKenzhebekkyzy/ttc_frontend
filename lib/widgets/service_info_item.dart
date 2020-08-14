import 'package:flutter/material.dart';

class ServiceInfoItem extends StatefulWidget {
  final String title;
  final String description;
  final List<String> serviceStructure;
  
  ServiceInfoItem(
      this.title,
      this.description,
      this.serviceStructure
      );
  
  @override
  _ServiceInfoItemState createState() => _ServiceInfoItemState();
}

class _ServiceInfoItemState extends State<ServiceInfoItem> {
  Color mainColor = Color(0xff278C3F);

  Color mainColor2 =Color(0xff2CA449);

  Color selectedColor = Color(0xffA9E230);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: 0,
          right: 0
      ),
//      color: mainColor,
      height: 420,
      
      child: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.fromLTRB(5, 0, 5, 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Colors.white,
            semanticContainer: true,
            elevation: 5,
            child: Text(
              "description text will be here"
            ),
          ),
          Card(
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 0,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image(
                          image: NetworkImage('http://admin.ttc.kz/storage/app/uploads/public/5b1/507/3b7/thumb_28_60_60_0_0_crop.png'),
                        ),
                        Text('descrition',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
