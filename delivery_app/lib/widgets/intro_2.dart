  import 'package:flutter/material.dart';
//import 'package:flutter_swiper/flutter_swiper.dart';

class LandingPageTwo extends StatelessWidget {
  final String title = 'DeliveryApp';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/intro-one');
          },
          icon: Icon(
            Icons.arrow_back,
          ),
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
            color: Colors.white,
            child: Text(
              'Skip',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/sign-in');
            },
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          SizedBox(
            height: 60,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2.5,
            margin: EdgeInsets.only(left: 20, top: 29, right: 20),
            child: Image.asset(
              'assets/images/Tracking_delivery.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "TRACK DELIVERY",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 24,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              "Track your package in real time! Ensure that your package is heading in the right direction and arrives safe",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 40,
              height: 8,
              margin: EdgeInsets.only(left: 164, bottom: 21),
              child: Image.asset(
                "assets/images/pagination.png",
                fit: BoxFit.none,
              ),
            ),
          ),
          Spacer(),
          Container(
             padding: EdgeInsets.all(10),
              height:MediaQuery.of(context).size.height / 10,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/intro-three');
              },
              color: Colors.blue[400],
              elevation: 5,
              child: Text('Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  )),
            ),
          ),
        ]),
      ),
    );
  }
}
