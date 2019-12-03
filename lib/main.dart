import 'package:aba/app_drawer.dart';
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
        canvasColor: Color(0xff002739),
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
        // child: DrawerWidget(),
        child: AppDrawer(),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Row(
          children: <Widget>[
            Text('BANK', style: TextStyle(color: Colors.white),),
            Text('\' ', 
              style: TextStyle(
                color: Color(0xffec3531),
                fontSize: 25.0,
                fontWeight: FontWeight.bold
              ),
            ),
            Text('Mobile', style: TextStyle(color: Colors.white),),
          ],
        ),
        backgroundColor: Color(0xff255b81),
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
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: MenuGrid(),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 40),
                      width: double.infinity,
                      color: Color(0xff54b8d0),
                      child: Stack(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Quick Transfers',
                                style: TextStyle(
                                  fontSize: 30.0,
                                  color: Colors.white
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                'Create your template here to make transfer quicker',
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              )
                            ],
                          ),
                          Positioned(
                            child: Image(
                              color: Colors.white30,
                              image: AssetImage('assets/transfer.png'),
                            ),
                            right: -100,
                            top: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 40),
                      width: double.infinity,
                      color: Color(0xffdd5e57),
                      child: Stack(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Quick Payment',
                                style: TextStyle(
                                  fontSize: 30.0,
                                  color: Colors.white
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                'Paying your bills with templates is faster',
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              )
                            ],
                          ),
                          Positioned(
                            child: Image(
                              color: Colors.white30,
                              image: AssetImage('assets/usd.png'),
                            ),
                            right: -100,
                            top: 20,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
