import 'package:delivery_app/Animation/FadeAnimation.dart';
import 'package:delivery_app/providers/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:google_maps_webservice/directions.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _obscureText = true;

  // String password;
  void value;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  final _emailcontroller = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 0.5,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.blue[300],
            Colors.blue[300],
            Colors.blue[300],
          ]),
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
                  FadeAnimation(
                    1,
                    Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FadeAnimation(
                      1.3,
                      Text(
                        "Welcome ",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
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
                            height: 20,
                          ),

                          FadeAnimation(
                            1.4,
                            Container(
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
                                      controller: _emailcontroller,
                                      decoration: InputDecoration(
                                          icon: const Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5.0),
                                            child:
                                                const Icon(Icons.account_box),
                                          ),
                                          hintText: "Email",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none),
                                      keyboardType: TextInputType.emailAddress,
                                      validator: (value) {
                                        if (value.isEmpty ||
                                            !value.contains('@')) {
                                          return 'invalid email!';
                                        }
                                      },
                                      onSaved: (value) {
                                        _emailcontroller.text = value;
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
                                      decoration: InputDecoration(
                                        hintText: "Password",
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: InputBorder.none,
                                        icon: const Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5.0),
                                          child: const Icon(Icons.lock),
                                        ),
                                        suffixIcon: IconButton(
                                            icon: Icon(
                                              _obscureText
                                                  ? Icons.visibility
                                                  : Icons.visibility_off,
                                              semanticLabel: _obscureText
                                                  ? 'hide password'
                                                  : 'show password',
                                            ),
                                            onPressed: _toggle),
                                      ),
                                      controller: _passwordController,
                                      onSaved: (value) {
                                        _passwordController.text = value;
                                      },
                                      obscureText: _obscureText,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 32,
                          ),

                          FadeAnimation(
                              1.5,
                              Text(
                                "Forgot Password?",
                                style: TextStyle(color: Colors.black),
                              )),

                          SizedBox(
                            height: 20,
                          ),

                          FadeAnimation(
                            1.6,
                            Container(
                              height: MediaQuery.of(context).size.height / 18,
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(20)),
                                color: Colors.transparent,
                                elevation: 0,
                                onPressed: () async {
                                  await Provider.of<Auth>(context,
                                          listen: false)
                                      .login(
                                    _emailcontroller.text.toString(),
                                    _passwordController.text.toString(),
                                  );

                                  Navigator.of(context).pushNamed('/orders');
                                },
                                child: Center(
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.blue[300]),
                            ),
                          ),

                          SizedBox(
                            height: 10,
                          ),

                          Container(
                            height: MediaQuery.of(context).size.height / 25,
                            margin: EdgeInsets.symmetric(horizontal: 50),
                            color: null,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(20),
                              ),
                              color: Colors.transparent,
                              elevation: 0,
                              onPressed: () {
                                print('Pressed');

                                Navigator.of(context).pushNamed('/Sign-up');
                              },
                              child: Center(
                                  child: Text(
                                "Create Account",
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                              )),
                            ),
                          )

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
