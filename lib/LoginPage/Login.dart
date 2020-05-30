import 'package:ecommerce/RegistrationPage/RegistrationPage.dart';
import 'package:flutter/material.dart';

import '../FadeAnimation/FadeAnimation.dart';
import '../MainHomePage/MainHomePage.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool _showPassword = false;
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

//      backgroundColor: Colors.blueAccent,
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            Colors.blue[600],
            Colors.deepPurple[500],
          ])),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeAnimation(
                1.2,
                Center(
                    child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.blue[100],
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ))),
            SizedBox(
              height: 20,
            ),
            FadeAnimation(
                1.5,
                Center(
                    child: Container(
                  width: 320,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withOpacity(0.3)),
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey[300]))),
                        child: TextFormField(
                            controller: _userNameController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.8)),
                              hintText: " Enter your Email Id",
                            ),
                            validator: (value) {
                              Pattern pattern =
                                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                              RegExp regex = new RegExp(pattern);
                              if (!regex.hasMatch(value)) {
                                return 'Enter Valid Email';
                              } else {
                                return null;
                              }
                            }),
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        child: TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.8)),
                              hintText: "Password",
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _showPassword = !_showPassword;
                                  });
                                },
                                child: Icon(
                                  _showPassword
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.white.withOpacity(0.8),
                                ),
                              )),
                          validator: (value) {
                            Pattern pattern =
                                r'^(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                            RegExp regex = new RegExp(pattern);
                            if (!regex.hasMatch(value) && value.length < 6) {
                              return 'Enter valid password';
                            } else {
                              return null;
                            }
                          },
                          obscureText: !_showPassword,
                        ),
                      ),
                    ],
                  ),
                ))),
            SizedBox(
              height: 30,
            ),
            FadeAnimation(
              1.8,
              Center(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                          width: 70,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[800]),
                          child: InkWell(
                              onTap: () {
                                if (_formKey.currentState.validate()) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              MainHomePage())));
                                } else {
                                  Text("Invalid details");
                                }
                              },
                              child: Icon(
                                Icons.arrow_forward,
                                size: 35,
                                color: Colors.white,
                              ))),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 20,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        RegistrationPage())));
                          },
                          child: Text(
                            'Create an account',
                            style: TextStyle(color: Colors.pink, fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
