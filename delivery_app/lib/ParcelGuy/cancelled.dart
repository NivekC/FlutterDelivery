import 'package:flutter/material.dart';

class CancelCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.only(
        top: 10.0,
      ),
      child: Card(
        elevation: 0.0,
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Today, 12:30 AM",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                height: MediaQuery.of(context).size.height * 0.15,
                color: Colors.grey[400],
              ),
              ListTile(
                contentPadding: EdgeInsets.only(
                  left: 0.0,
                ),
                title: Text(
                  "12/3/20",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.pin_drop,
                      color: _theme.primaryColor,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "Strathmore - Raphta Rd.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "Price",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "400",
                      style: TextStyle(
                        fontSize: 24.0,
                        color: _theme.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
