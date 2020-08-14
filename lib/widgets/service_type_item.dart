import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ServiceTypeItem extends StatelessWidget {
  final String id;
  final String title;
  final String description;
  final String imageUrl;

  ServiceTypeItem(
      this.id,
      this.title,
      this.description,
      this.imageUrl,
      );

  void selectServiceType(BuildContext ctx){
    Navigator.of(ctx)
        .pushNamed(
        '/selected_service_info'
    );
  }

  Color mainColor = Color(0xff278C3F);
  Color mainColor2 =Color(0xff2CA449);
  Color selectedColor = Color(0xffA9E230);

  int isSelected = 0;
  Color color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 0,
        right: 0
      ),
//      color: mainColor,
      height: 80,
      child: Card(
        child: InkWell(
          splashColor: selectedColor.withOpacity(1),
          borderRadius: BorderRadius.circular(10.0),
          onTap: () => selectServiceType(context),
          child: Wrap(
            alignment: WrapAlignment.start,
            spacing: 0,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Image.network(imageUrl,
                      scale: 2,
                      color: mainColor,),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 5
                        ),
                        child: Text(title,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: mainColor2,
                            fontWeight: FontWeight.bold
                          ),),
                      ),
                      Text(description,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12
                        ),)
                    ],
                  ),
                ],
              )
            ]
          ),
        ),
        margin: EdgeInsets.fromLTRB(5, 0, 5, 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: color,
        semanticContainer: true,
        elevation: 5,
      ),
    );
  }
}