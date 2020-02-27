import 'package:flutter/material.dart';

import 'drawer.dart';

class ParcelSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.blue),
        ),
        iconTheme: IconThemeData(color: Colors.blue),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      drawer: ParcelDrawer(),
      body: Container(
        height: MediaQuery.of(context).size.height / 1,
        padding: EdgeInsets.all(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 5,
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Container(
                      width: 150,
                      child: Card(
                        elevation: 4,
                        color: Colors.grey[100],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.account_box,
                              size: 20,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Account',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed('/profile');
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 150,
              height: 150,
              child: Card(
                elevation: 4,
                color: Colors.grey[100],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.help_outline,
                      size: 20,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Help',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,

            //   children: <Widget>[

            Spacer(),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              height: 80,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('');
                },
                color: Colors.blue[300],
                elevation: 5,
                child: Text(
                  'Log Out',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
