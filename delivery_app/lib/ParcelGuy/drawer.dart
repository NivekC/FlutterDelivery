import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:ikiosk/providers/authentication.dart';
// import 'package:provider/provider.dart';

class ParcelDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Text(
                'Welcome John',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              automaticallyImplyLeading: false,
            ),
             Divider(),
            SizedBox(
              height: 10,
            ),
             ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 28,
                color: Colors.blue,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                  Navigator.of(context).pushNamed('#');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.edit,
                size: 28,
                color: Colors.blue,
              ),
              title: Text(
                'Edit Profile',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                  Navigator.of(context).pushNamed('/profile');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.shopping_cart,
                size: 28,
                color: Colors.blue,
              ),
              title: Text(
                'Orders',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                 Navigator.of(context).pushNamed('/orders');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.attach_money,
                size: 28,
                color: Colors.blue,
              ),
              title: Text(
                'Expenses',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/charts');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.settings,
                size: 28,
                color: Colors.blue,
              ),
              title: Text(
                'Settings',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/parcelSettings');
              },
            ),
            
            Divider(),
            // ListTile(
            //   leading: Icon(
            //     Icons.settings,
            //     size: 28,
            //     color: Colors.blue,
            //   ),
            //   title: Text(
            //     "",
            //     style: TextStyle(color: Colors.blue[300]),
            //   ),
            // ),
            
            Divider(),
            Spacer(),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                size: 28,
              ),
              title: Text('Logout'),
              onTap: () {
                Navigator.of(context).popAndPushNamed('/sign-in');
                //  Provider.of<Authentication>(context, listen: false).logout();
              },
            ),
          ],
        ),
      ),
    );
  }
}
