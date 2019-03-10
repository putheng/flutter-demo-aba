import 'package:aba/drawerWidget.dart';
import 'package:aba/grid.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ABA Mobile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        canvasColor: Colors.cyan[900],
        brightness: Brightness.dark,
      ),
      home: MyHomePage(title: 'ABA\' Mobile'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerWidget(),
      ),
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.white),
        title: Row(
          children: <Widget>[
            Text('ABA', style: TextStyle(color: Colors.white),),
            Text('\' ', 
              style: TextStyle(
                color: Colors.red,
                fontSize: 25.0,
                fontWeight: FontWeight.bold
              ),
            ),
            Text('Mobile', style: TextStyle(color: Colors.white),),
          ],
        ),
        backgroundColor: Colors.cyan[900],
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none),
            tooltip: 'Air it',
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Container(
               width: 30.0,
               height: 30.0,
               decoration: new BoxDecoration(
                 color: const Color(0xff7c94b6),
                 image: new DecorationImage(
                   image: AssetImage('assets/photo.jpg'),
                   fit: BoxFit.cover,
                 ),
                 borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                 border: new Border.all(
                   color: Colors.white,
                   width: 2.0,
                 ),
               ),
             ),
          ),
        ],
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            MenuGrid(),
            Container(
              color: Colors.cyanAccent[700],
              child: Padding(
                padding: const EdgeInsets.only(top: 35.0, bottom: 40.0, left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Quick Transfer',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white
                      ),
                    ),
                    Text(
                      'Create your template here to make transfer quicker',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    )
                  ],
                ),
              )
            ),
            Container(
              color: Colors.red[800],
              child: Padding(
                padding: const EdgeInsets.only(top: 35.0, bottom: 40.0, left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Quick Payment',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white
                      ),
                    ),
                    Text(
                      'Paying your bills with templates is faster',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    )
                  ],
                ),
              )
            )
          ],
        ),
      )
    );
  }
}
