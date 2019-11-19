import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  final Widget child;

  DrawerWidget({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Row(
            children: <Widget>[
              Container(
               width: 60.0,
               height: 60.0,
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
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Welcome',
                      style: TextStyle(
                        color: Colors.cyan
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0, bottom: 1.0),
                      child: Text('Sara Putheng'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0
                        ),
                      ),
                    ),
                    Text('Your ID: 123456',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12.0
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        
        ListTile(
          leading: Image.asset('assets/account.png', width: 26.0,),
          title: Text('Accounts'),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset('assets/transfer.png', width: 26.0,),
          title: Text('Transfers'),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset('assets/usd.png', width: 26.0,),
          title: Text('Payments'),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset('assets/deposit.png', width: 26.0,),
          title: Text('Deposit'),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset('assets/atm.png', width: 26.0,),
          title: Text('Cash to ATM'),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset('assets/marker.png', width: 26.0,),
          title: Text('ABA PAY Places'),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset('assets/account.png', width: 26.0,),
          title: Text('Exchange Rates'),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset('assets/phone.png', width: 26.0,),
          title: Text('Contact Us'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
          onTap: () {},
        ),
        Divider(
          height: 1.0,
          color: Colors.white24,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 50.0, left: 10.0, right: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('V 4.6.4', style: TextStyle(fontSize: 12.0)),
              Text('Last Login: 18:44 | 04 Mar 19', 
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white54
                )
              )
            ],
          ),
        ),
      ],
    );
  }
}
