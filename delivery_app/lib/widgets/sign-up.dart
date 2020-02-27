import 'package:delivery_app/Animation/FadeAnimation.dart';
import 'package:delivery_app/providers/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  final _emailcontroller = TextEditingController();
  final _passwordController = TextEditingController();
  final _repeatPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.blue[300],
          Colors.blue[300],
          Colors.blue[300],
        ])),
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
                        "Sign Up",
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  FadeAnimation(
                      1.3,
                      Text(
                        "Welcome OnBoard!",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 0,
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
                            height: 10,
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
                                          hintText: "Email",
                                          icon: const Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5.0),
                                            child: const Icon(Icons.email),
                                          ),
                                          hintStyle:
                                              TextStyle(color: Colors.black),
                                          border: InputBorder.none),
                                      validator: (value) {
                                        if (value.isEmpty ||
                                            !value.contains('@')) {
                                          return 'Invalid email!';
                                        }
                                        return null;
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
                                        bottom:
                                            BorderSide(color: Colors.grey[200]),
                                      ),
                                    ),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Password",
                                        icon: const Padding(
                                          padding:
                                              const EdgeInsets.only(top: 2.0),
                                          child: const Icon(
                                            Icons.lock,
                                          ),
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
                                          onPressed: _toggle,
                                        ),
                                        hintStyle:
                                            TextStyle(color: Colors.black),
                                        border: InputBorder.none,
                                      ),
                                      controller: _passwordController,
                                      validator: (value) {
                                        if (value.isEmpty || value.length < 5) {
                                          return 'Password is too short!';
                                        }
                                      },
                                      onSaved: (value) {
                                        _passwordController.text = value;
                                      },
                                      obscureText: _obscureText,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.grey[200],
                                        ),
                                      ),
                                    ),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          hintText: "Repeat Password",
                                          icon: const Padding(
                                            padding:
                                                const EdgeInsets.only(top: 2.0),
                                            child: const Icon(
                                              Icons.lock,
                                            ),
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
                                          hintStyle:
                                              TextStyle(color: Colors.black),
                                          border: InputBorder.none),
                                      obscureText: _obscureText,
                                      controller: _repeatPasswordController,
                                      validator: _repeatPasswordController ==
                                              _passwordController
                                          ? (value) {
                                              if (value !=
                                                  _passwordController.text) {
                                                return 'Passwords do not match!';
                                              }
                                            }
                                          : null,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 40,
                          ),

                          FadeAnimation(
                              1.6,
                              Container(
                                height: MediaQuery.of(context).size.height / 17,
                                margin: EdgeInsets.symmetric(horizontal: 50),
                                child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(20)),
                                    color: Colors.blue[300],
                                    onPressed: () async {
                                      await Provider.of<Auth>(context,
                                              listen: false)
                                          .signup(
                                        _emailcontroller.text.toString(),
                                        _passwordController.text.toString(),
                                      );

                                  Navigator.of(context).pushNamed('/sign-in');
                                    },
                                    child: Center(
                                      child: Text(
                                        "Sign Up",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blue[300]),
                              )),

                          SizedBox(
                            height: 20,
                          ),

                          Container(
                            height: MediaQuery.of(context).size.height / 30,
                            margin: EdgeInsets.symmetric(horizontal: 50),
                            color: Colors.white,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(20),
                              ),
                              color: Colors.transparent,
                              elevation: 0,
                              onPressed: () {
                                Navigator.of(context).pushNamed('/sign-in');
                              },
                              child: Center(
                                  child: Text(
                                "Already have an account?",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontStyle: FontStyle.normal),
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
