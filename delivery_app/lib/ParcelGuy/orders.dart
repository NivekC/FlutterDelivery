import 'package:delivery_app/models/ordersModel.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ParcelOrders extends StatelessWidget {
  final List<Order> previousOrders = [
    Order("NairobiWest - Westlands", DateTime.now(), DateTime.now(), 2000),
    Order("Kilimani - Westlands", DateTime.now(), DateTime.now(), 1000),
    Order("Lavington - Nyayo", DateTime.now(), DateTime.now(), 4000),
    Order("MombasaRd - Thika", DateTime.now(), DateTime.now(), 1500),
    Order("Kitisuru - Muthaiga", DateTime.now(), DateTime.now(), 1000),
    Order("Lavington - Nyayo", DateTime.now(), DateTime.now(), 4000),
    Order("MombasaRd - Thika", DateTime.now(), DateTime.now(), 1500),
    Order("Kitisuru - Muthaiga", DateTime.now(), DateTime.now(), 1000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   iconTheme: IconThemeData(color: Colors.blue),
      //   centerTitle: true,
      //   backgroundColor: Colors.white,
      // ),
      body: Container(
        padding: EdgeInsets.only(top:25),
        color:  Colors.white,
        child: new ListView.builder(
          itemCount: previousOrders.length,
          itemBuilder: (BuildContext context, int index) =>
              buildOrderCard(context, index),
        ),
      ),
    );
  }

  Widget buildOrderCard(BuildContext context, int index) {
    final order = previousOrders[index];
    return new Container(
      color:  Colors.grey[200],
      padding: EdgeInsets.fromLTRB(10, 10, 10, 15),
      child: Card(
        color: Colors.white,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: <Widget>[
            // Icon(
            //   Icons.indeterminate_check_box
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
              child: Row(
                children: <Widget>[
                  Text(
                    order.title,
                    style: new TextStyle(fontSize: 25),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0, bottom: 8.0),
              child: Row(
                children: <Widget>[
                  Text(
                      "${DateFormat('dd/MM/yyyy').format(order.startTime).toString()} - ${DateFormat('dd/MM/yyyy').format(order.startTime).toString()}"),
                  Spacer(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "KES${order.budget.toStringAsFixed(2)}",
                    style: new TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
