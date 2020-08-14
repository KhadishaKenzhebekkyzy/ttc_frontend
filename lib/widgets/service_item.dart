import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ServiceItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ServiceItem(
    this.id,
    this.title,
    this.imageUrl,
      );

  void selectService(BuildContext ctx){
    Navigator.of(ctx)
        .pushNamed(
        '/selected_category'
    );
  }

  Color mainColor = Color(0xff278C3F);
  Color mainColor2 = Color(0xff2CA449);
  Color selectedColor = Color(0xffA9E230);
  int isSelected = 0;
  Color color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
          child: Card(
            child: InkWell(
              onTap: () => selectService(context),
              splashColor: selectedColor.withOpacity(1),
              borderRadius: BorderRadius.circular(20.0),
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 10,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      top: 15,
                      right: 10,
                      left: 10,
                      bottom: 10
                    ),
                    child: Image.network(imageUrl,
                      scale: 2.5,
                      color: mainColor,),
                  ),
                  Text(title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: mainColor2,
                    ),)
                ],
              ),
            ),
            margin: EdgeInsets.fromLTRB(5, 10, 5, 25),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: color,
            semanticContainer: true,
            elevation: 10,
          ),
    );
  }
}
