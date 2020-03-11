import 'dart:async';

import 'package:flutter/material.dart';
import 'package:delivery_app/location/map.dart';
import '../widgets/profile_tile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IncomingRequest extends StatefulWidget {
  @override
  IncomingRequestState createState() {
    return new IncomingRequestState();
  }
}

class IncomingRequestState extends State<IncomingRequest> {
  bool isDataAvailable = true;
  Widget bodyData() => Container(
      padding: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height / 1,
        margin: EdgeInsets.symmetric(horizontal: 50),
        child: Center(
          child: isDataAvailable
              ? RaisedButton(
                 shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(80),
                              ),
                  
                  onPressed: () => showSuccessDialog(),
                  color: Colors.blue[300],
                  child: Text("Incoming Request!"),
                )
              : CircularProgressIndicator(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      
      body: bodyData(),
    );
  }

  void showSuccessDialog() {
    setState(() {
      isDataAvailable = false;
      Future.delayed(Duration(seconds: 3)).then((_) => goToDialog());
    });
  }

  goToDialog() {
    setState(() {
      isDataAvailable = true;
    });
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) => Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    successTicket(),
                    SizedBox(
                      height: 10.0,
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.clear,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ),
            ));
  }

  successTicket() => Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        child: Material(
          clipBehavior: Clip.antiAlias,
          elevation: 2.0,
          borderRadius: BorderRadius.circular(4.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ProfileTile(
                  title: "Incoming Request!",
                  textColor: Colors.black,
                  subtitle: "Parcel Delivery",
                ),
                ListTile(
                  title: Text("Date"),
                  subtitle: Text(""),
                  trailing: Text("11:00 AM"),
                ),
                ListTile(
                  title: Text("From: "),
                  subtitle: Text("Kevin"),
                  trailing: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage(
                        "https://lh3.googleusercontent.com/-pkPFE8SoLfI/XCkghv3J5SI/AAAAAAAAApg/0wY2TMfjTvAlJHA5iQ0BQ-e5u0jvwCIzACEwYBhgL/w138-h140-p/Screenshot_2018-12-19-11-42-04-053_com.instagram.android.png"),
                  ),
                ),
                ListTile(
                  title: Text("Amount"),
                  subtitle: Text("\KES400"),
                  trailing: Text("Card Payment"),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0.0,
                  color: Colors.grey.shade300,
                  child: ListTile(
                    leading: Icon(
                      FontAwesomeIcons.ccVisa,
                      color: Colors.black,
                    ),
                    title: Text("Credit/Debit Card"),
                    subtitle: Text("PNB Card ending ***6"),
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  child: Container(
                    height: 40.0,
                    width: 220,
                    decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Center(
                      child: Text(
                        "Accept Order",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => Location()));
                  },
                ),
                SizedBox(
                  height:10
                ),
                   GestureDetector(
                  child: Container(
                    height: 40.0,
                    width: 220,
                    decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Center(
                      child: Text(
                        "Reject Order",
                        style: TextStyle(
                           color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => Location()));
                  },
                ),
              ],
            ),
          ),
        ),
      );
}
