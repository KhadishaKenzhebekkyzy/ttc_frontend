import 'package:flutter/material.dart';
import './screens/all_services_screen.dart';
import './screens/selected_service_info_screen.dart';
import './screens/selected_service_screen.dart';
import './screens/selected_category_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/selected_service': (ctx) => SelectedServiceScreen(),
        '/selected_service_info': (ctx)=> SelectedServiceInfoScreen(),
        '/selected_category': (ctx) => SelectedCategoryScreen()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Color mainColor = Color(0xff278C3F);
  Color selectedColor = Color(0xffA9E230);

  nested(){
    return NestedScrollView(
      headerSliverBuilder: (
          BuildContext context,
          bool innerBoxIsScrolled
      ){
        return <Widget>[
          SliverAppBar(
            expandedHeight: 150.0,
            floating: false,
            pinned: true,
            backgroundColor: mainColor,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
                title: SizedBox(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                          "Главная",
                          textAlign: TextAlign.center
                      ),
                    ],
                  ),
                ),
              background: Image.asset(
                'images/Gradient.jpg',
                fit: BoxFit.fill,
              )
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.search),
                tooltip: "Search",
                onPressed: () {
                  // onPressed handler
                },
              ),
            ],
          )
        ];
      },
      body: Center(
        child: Text("the content"),
      )
    );
  }
  int _currentIndex = 0;
  Widget callPage(int currentIndex){
    switch(currentIndex){
      case 0:
        return nested();
      case 1:
        return ServicesScreen();
        break;
      default: return nested();
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: callPage(
        _currentIndex
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: mainColor,
        fixedColor: selectedColor,
        currentIndex: _currentIndex,
        onTap: (value){
          _currentIndex = value;
          setState((){
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Главная'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_remote),
            title: Text('Услуги'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Личный кабинет'),
          ),
        ],
      ),
    );
  }
}
