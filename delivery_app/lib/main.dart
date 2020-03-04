//import 'package:delivery_app/custom_drawer/drawer_user_controller.dart';
//import 'package:delivery_app/models/ordersModel.dart';
import 'package:delivery_app/ParcelGuy/Chart.dart';
import 'package:delivery_app/ParcelGuy/IncomingR.dart';
import 'package:delivery_app/ParcelGuy/Settings.dart';
import 'package:delivery_app/ParcelGuy/orders.dart';
import 'package:delivery_app/ParcelGuy/userProfile.dart';
import 'package:delivery_app/navbar.dart';
import 'package:delivery_app/paymentpage/debit_card.dart';
import 'package:delivery_app/paymentpage/payment_page.dart';
import 'package:delivery_app/widgets/Home.dart';
import 'package:delivery_app/widgets/PaymentsOptions.dart';
import 'package:delivery_app/widgets/code.dart';
import 'package:delivery_app/widgets/confirmOrder.dart';
// import 'package:delivery_app/widgets/credit_card_form.dart';
// import 'package:delivery_app/widgets/credit_card_widget.dart';
import 'package:delivery_app/widgets/deliveryDetails.dart';
import 'package:delivery_app/widgets/intro_1.dart';
import 'package:delivery_app/widgets/intro_2.dart';
import 'package:delivery_app/widgets/intro_3.dart';
import 'package:delivery_app/widgets/orders.dart';
import 'package:delivery_app/widgets/phone_verification.dart';
//import 'package:delivery_app/widgets/rating.dart';
import 'package:delivery_app/widgets/settings.dart';
import 'package:delivery_app/widgets/sign-up.dart';
import 'package:delivery_app/widgets/userProfile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'States/app_state.dart';
import 'providers/auth.dart';

import 'widgets/pickupDetails.dart';
import 'widgets/sign_in.dart';

void main() => runApp(MyApp());
// SystemChrome.setPreferredOrientations([
//   DeviceOrientation.portraitUp,
//   DeviceOrientation.portraitDown],
//   );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Auth(),
        ),
        ChangeNotifierProvider.value(
          value: AppState(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
        routes: {
          '/sign-in': (ctx) => SignIn(),
          '/intro-one': (ctx) => LandingPageOne(),
          '/intro-two': (ctx) => LandingPageTwo(),
          '/intro-three': (ctx) => LandingPageThree(),
          '/Payment': (ctx) => PaymentOptions(),
          '/settings': (ctx) => Settings(),
          '/Sign-up': (ctx) => SignUp(),
          '/code': (ctx) => Code(),
          '/phone': (ctx) => Phone(),
          '/map': (ctx) => MyHomePage(),
          '/orders': (ctx) => Orders(),
          '/credit': (ctx) => PaymentPage(),
          '/creditpay': (ctx) => CreditCardPage(),
          '/profile': (ctx) => ProfilePage(),
          '/incomingrequest': (ctx) => IncomingRequest(),
          '/parcelSettings': (ctx) => ParcelSettings(),
          '/charts': (ctx) => ChartPage(),
          '/confirmOrder': (ctx) => ConfirmOrderPage(),
          '/pickup': (ctx) => PickupDetails(),
          '/delivery': (ctx) => DeliveryDetails(),
          '/Parcelorders': (ctx) => ParcelOrders(),
           '/Parcelprofile': (ctx) => ParcelProfilePage(),
        },
      ),
    );
  }
}
