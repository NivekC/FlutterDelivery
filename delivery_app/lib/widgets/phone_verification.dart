import 'package:flutter/material.dart';

class Phone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3,
              child: Text(
                "Phone Verification",
                style: TextStyle(
                  color: Colors.blue[300],
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey[200],
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.phone,
                    size: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Enter Phone Number",
                        hintStyle: TextStyle(color: Colors.black),
                        border: InputBorder.none),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          Container(
              padding: EdgeInsets.all(18),
              height: MediaQuery.of(context).size.height / 6,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/code');
                },
                color: Colors.blue[400],
                elevation: 5,
                child: Text(
                  'Send Verification Code',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
