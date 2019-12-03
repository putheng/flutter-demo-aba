import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Container(
            child: Column(
              children: <Widget>[
                DrawerHeader(
                  child: Row(
                    children: <Widget>[
                      Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/photo.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                    ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
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
                              padding: EdgeInsets.only(top: 3.0, bottom: 1.0),
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
                )
              ],
            ),
          ),
        ),
        Divider(
          height: 1.0,
          color: Colors.white24,
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 30.0, left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('V 4.8.2', style: TextStyle(fontSize: 12.0)),
                Text('Last Login: 18:44 | 04 Mar 19', 
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white54
                  )
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}