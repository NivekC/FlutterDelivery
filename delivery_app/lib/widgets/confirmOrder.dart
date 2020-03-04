import 'package:delivery_app/location/map.dart';
import 'package:delivery_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class ConfirmOrderPage extends StatelessWidget {
  static final String path = "lib/src/pages/ecommerce/confirm_order1.dart";
  final String address = "Mbagathi Road";
  final String phone = "07085412365";
  final double total = 500;
  final double delivery = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirm Order"),
      ),
      drawer: AppDrawer(),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      padding:
          EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0, bottom: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Subtotal"),
              Text("KES. $total"),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Delivery fee"),
              Text("KES. $delivery"),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Total",
                style: Theme.of(context).textTheme.title,
              ),
              Text("KES. ${total + delivery}",
                  style: Theme.of(context).textTheme.title),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
              color: Colors.grey.shade200,
              padding: EdgeInsets.all(8.0),
              width: double.infinity,
              child: Text("Delivery Address".toUpperCase())),
          Column(
            children: <Widget>[
              RadioListTile(
                selected: true,
                value: address,
                groupValue: address,
                title: Text(address),
                onChanged: (value) {},
              ),
              RadioListTile(
                selected: false,
                value: "New Address",
                groupValue: address,
                title: Text("Choose new delivery address"),
                onChanged: (value) {},
              ),
              Container(
                  color: Colors.grey.shade200,
                  padding: EdgeInsets.all(8.0),
                  width: double.infinity,
                  child: Text("Contact Number".toUpperCase())),
              RadioListTile(
                selected: true,
                value: phone,
                groupValue: phone,
                title: Text(phone),
                onChanged: (value) {},
              ),
           
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
              color: Colors.grey.shade200,
              padding: EdgeInsets.all(8.0),
              width: double.infinity,
              child: Text("Payment Option".toUpperCase())),
          RadioListTile(
            groupValue: true,
            value: true,
            title: Text("Cash on Delivery"),
            onChanged: (value) {},
          ),
          RadioListTile(
            groupValue: true,
            value: true,
            title: Text("Card"),
            onChanged: (value) {},
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20)),
              color: Colors.blue[300],
              onPressed: () =>  {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => Location()))
                  },
              child: Text(
                "Confirm Order",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
