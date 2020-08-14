import 'package:flutter/material.dart';
import '../services_data.dart';
import '../widgets/service_type_item.dart';
import '../widgets/service_list_item_for_category.dart';

class SelectedServiceScreen extends StatelessWidget {

  final Color mainColor = Color(0xff278C3F);
  final Color selectedColor = Color(0xffA9E230);

  @override
  Widget build(BuildContext context) {

    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
//    final serviceId = routeArgs['id'];
    final serviceType = SERVICES_TYPES.where((type) {
      return type.service.contains('s1');
    }).toList();

    return Container(
              height: 360,
              child: ListView.builder(
                  itemBuilder: (context, index){
                    return ServiceTypeItem(
                      serviceType[index].id,
                      serviceType[index].title,
                      serviceType[index].description,
                      serviceType[index].imageUrl
                    );
                  },
                itemCount: serviceType.length,
              )
          );
  }
}