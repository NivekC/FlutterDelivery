import 'package:delivery_app/ParcelGuy/Chart.dart';
import 'package:delivery_app/ParcelGuy/IncomingR.dart';
import 'package:delivery_app/ParcelGuy/Settings.dart';
import 'package:delivery_app/ParcelGuy/home.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentindex = 2;
  List<Map<String, Object>> _pages;

  void initState() {
    _pages = [
      {
        'page': IncomingRequest(),
      },
      {
        'page': PaymentSuccessPage(),
      },
      {
        'page': ChartPage(),
      },
      {
        'page': ParcelSettings(),
      },
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentindex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentindex,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(color: Colors.blue),
        unselectedIconTheme: IconThemeData(color: Colors.black),
        items: [
          BottomNavigationBarItem(
            title: Text('Requests'),
            icon: Icon(Icons.compare_arrows),
          ),
          BottomNavigationBarItem(
            title: Text('Payment'),
            icon: Icon(Icons.payment),
          ),
          BottomNavigationBarItem(
            title: Text('Chart'),
            icon: Icon(Icons.show_chart),
          ),
          BottomNavigationBarItem(
            title: Text('Settings'),
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}