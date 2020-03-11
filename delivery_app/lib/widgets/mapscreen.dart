import 'package:delivery_app/Animation/FadeAnimation.dart';
import 'package:delivery_app/States/app_state.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'drawer.dart';

class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Parcel Destination',
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: IconThemeData(color: Colors.blue),
        ),
        drawer: AppDrawer(),
        body: appState.initialPosition == null
            ? Container(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SpinKitRotatingCircle(
                        color: Colors.black,
                        size: 50.0,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Visibility(
                    visible: appState.locationServiceActive == false,
                    child: Text(
                      "Please enable location services!",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  )
                ],
              ))
            : Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  GoogleMap(
                    initialCameraPosition: CameraPosition(
                        target: appState.initialPosition, zoom: 15.0),
                    onMapCreated: appState.onCreated,
                    myLocationEnabled: true,
                    mapType: MapType.normal,
                    compassEnabled: true,
                    markers: appState.markers,
                    onCameraMove: appState.onCameraMove,
                    polylines: appState.polyLines,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(1.0, 5.0),
                                blurRadius: 10,
                                spreadRadius: 3)
                          ],
                        ),
                        child: ListView(
                          padding: EdgeInsets.all(20),
                          children: <Widget>[
                            TextField(
                              cursorColor: Colors.black,
                              controller: appState.locationController,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.location_on,
                                  color: Colors.black,
                                ),
                                hintText: "Pick up",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            TextField(
                              cursorColor: Colors.black,
                              controller: appState.destinationController,
                              textInputAction: TextInputAction.go,
                              onSubmitted: (value) {
                                appState.sendRequest(value);
                              },
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.local_taxi,
                                  color: Colors.black,
                                ),
                                hintText: "Destination",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            RaisedButton(
                              color: Colors.blue[300],
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5),
                              ),
                              child: Text(
                                'Next',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () async {
                                Navigator.of(context).pushNamed('/delivery');
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
      ),
    );
  }
}
