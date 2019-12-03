import 'package:flutter/material.dart';

class MenuGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GridView.count(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 3,
          children: <Widget>[
            MenuCard(image: 'assets/account.png', text: 'Accounts'),
            MenuCard(image: 'assets/transfer.png', text: 'Transfer'),
            MenuCard(image: 'assets/usd.png', text: 'Payments'),
            MenuCard(image: 'assets/deposit.png', text: 'Deposit'),
            MenuCard(image: 'assets/atm.png', text: 'Cash to ATM'),
            MenuCard(image: 'assets/vs-card.png', text: 'Virtual Card'),
            MenuCard(image: 'assets/qr-payment.png', text: 'QR Payment'),
            MenuCard(image: 'assets/phone.png', text: 'Contact Us'),
            MenuCard(image: 'assets/marker.png', text: 'ABA Locator')
          ],
      ),
    );
  }
}


class MenuCard extends StatelessWidget {

  final String image;
  final String text;

  MenuCard({this.image, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: InkWell(
          onTap: (){
            print('clicked');
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(image, height: 40.0,),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(text, style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
      color: Color(0xff1d4367),
      margin: EdgeInsets.all(0.1),
    );
  }
}