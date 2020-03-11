import 'package:delivery_app/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';

class PickupDetails extends StatefulWidget {
  @override
  _PickupDetailsState createState() => _PickupDetailsState();
}

class _PickupDetailsState extends State<PickupDetails> {
  final _senderaddresscontroller = TextEditingController();
  final _pickupcontroller = TextEditingController();
  final _sendercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'PickUp Details',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
      ),
      drawer: AppDrawer(),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.blue[300],
              Colors.blue[300],
              Colors.blue[300],
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // FadeAnimation(
                  //   1,
                  //   // Text(
                  //   //   "Pickup Details",
                  //   //   style: TextStyle(color: Colors.white, fontSize: 50),
                  //   // ),
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  // Center(
                  //   child: FadeAnimation(
                  //     1.3,
                  //     Image.asset(
                  //       'assets/images/Request_pickup.jpg',
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: ListView(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          SizedBox(
                            height: 5,
                          ),

                          FadeAnimation(
                            1.4,
                            Container(
                              padding: EdgeInsets.only(top: 5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.blue[100],
                                        blurRadius: 20,
                                        offset: Offset(0, 10))
                                  ]),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey[200]))),
                                    child: TextFormField(
                                      controller: _senderaddresscontroller,
                                      decoration: InputDecoration(
                                          hintText: "Address",
                                          icon: const Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5.0),
                                            child: const Icon(Icons.email),
                                          ),
                                          hintStyle:
                                              TextStyle(color: Colors.black),
                                          border: InputBorder.none),
                                      onSaved: (value) {
                                        _senderaddresscontroller.text = value;
                                      },
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey[200]))),
                                    child: TextFormField(
                                      controller: _sendercontroller,
                                      decoration: InputDecoration(
                                          hintText: "Sender Details",
                                          icon: const Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5.0),
                                            child: const Icon(Icons.send),
                                          ),
                                          hintStyle:
                                              TextStyle(color: Colors.black),
                                          border: InputBorder.none),
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Please enter package details';
                                        }
                                        return null;
                                      },
                                      onSaved: (value) {
                                        _sendercontroller.text = value;
                                      },
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey[200]))),
                                    child: TextFormField(
                                      controller: _pickupcontroller,
                                      decoration: InputDecoration(
                                          hintText: "Pickup Details(House No)",
                                          icon: const Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5.0),
                                            child: const Icon(
                                                Icons.confirmation_number),
                                          ),
                                          hintStyle:
                                              TextStyle(color: Colors.black),
                                          border: InputBorder.none),
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Please Input Recepients Number';
                                        }
                                        return null;
                                      },
                                      onSaved: (value) {
                                        _pickupcontroller.text = value;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 40,
                          ),

                          FadeAnimation(
                            1.6,
                            Container(
                              height: MediaQuery.of(context).size.height / 17,
                              margin: EdgeInsets.symmetric(horizontal: 50),
                              child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20)),
                                  color: Colors.blue[300],
                                  onPressed: () async {
                                    Navigator.of(context)
                                        .pushNamed('/confirmOrder');
                                  },
                                  child: Center(
                                    child: Text(
                                      "Next",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.blue[300]),
                            ),
                          ),

                          //
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
