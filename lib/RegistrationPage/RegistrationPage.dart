import 'package:ecommerce/LoginPage/Login.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileNoController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.grey[200],
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.deepPurple[500],
                Colors.blue[600],
              ]),
        ),
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 35, left: 15),
                child: Center(
                    child: Container(
                        child: CircleAvatar(
                  radius: 50,
                  child: Icon(
                    Icons.person_pin,
                    size: 90,
                    color: Colors.white.withOpacity(0.5),
                  ),
//                            backgroundImage: AssetImage('assets/images/RegCh.png'),
                  backgroundColor: Colors.transparent,
                ))),
              ),
              ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(25.0),
                    bottomRight: Radius.circular(55.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 1),
                    child: Container(
                      height: 500,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                      ),
                      child: Form(
                        key: _formKey,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              TextFormField(
                                onTap: () {},
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "please enter your name";
                                  }
                                },
                                decoration: new InputDecoration(
                                  labelText: 'UserName',
                                  labelStyle: TextStyle(color: Colors.white70),
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.white70,
                                  ),
                                  prefixText: ' ',
                                ),
                              ),
                              TextFormField(
                                  onTap: () {},
                                  decoration: new InputDecoration(
                                    labelText: 'Mobile Number',
                                    labelStyle:
                                        TextStyle(color: Colors.white70),
                                    prefixIcon: const Icon(
                                      Icons.add_call,
                                      color: Colors.white70,
                                    ),
                                    prefixText: ' ',
                                  ),
                                  validator: (value) {
                                    Pattern pattern =
                                        r'(^(?:[+0]9)?[0-9]{10,12}$)';
                                    RegExp regex = new RegExp(pattern);
                                    if (!regex.hasMatch(value)) {
                                      return 'Enter Mobile Number';
                                    } else {
                                      return null;
                                    }
                                  }),
                              TextFormField(
                                  onTap: () {},
                                  decoration: new InputDecoration(
                                    labelText: 'EmailId',
                                    labelStyle:
                                        TextStyle(color: Colors.white70),
                                    prefixIcon: const Icon(
                                      Icons.email,
                                      color: Colors.white70,
                                    ),
                                    prefixText: ' ',
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
                              TextFormField(
                                onTap: () {},
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "please enter your name";
                                  }
                                },
                                decoration: new InputDecoration(
//
                                  labelText: 'Address',
                                  labelStyle: TextStyle(color: Colors.white70),
                                  prefixIcon: const Icon(
                                    Icons.home,
                                    color: Colors.white70,
                                  ),
                                  prefixText: ' ',
                                ),
                              ),
                              TextFormField(
                                controller: _passwordController,
                                validator: (value) {
                                  Pattern pattern =
                                      r'^(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                                  RegExp regex = new RegExp(pattern);
                                  if (!regex.hasMatch(value) &&
                                      value.length < 6) {
                                    return 'Enter valid password';
                                  } else {
                                    return null;
                                  }
                                },
                                decoration: new InputDecoration(
                                    labelText: 'Password',
                                    labelStyle:
                                        TextStyle(color: Colors.white70),
                                    prefixIcon: const Icon(
                                      Icons.lock,
                                      color: Colors.white70,
                                    ),
                                    prefixText: ' ',
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
                                        color: Colors.white70,
                                      ),
                                    )),
                                obscureText: !_showPassword,
                              ),
                              TextFormField(
                                controller: _confirmPasswordController,
                                validator: (value) {
                                  Pattern pattern =
                                      r'^(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                                  RegExp regex = new RegExp(pattern);
                                  if (!regex.hasMatch(value) &&
                                      value.length < 6) {
                                    return 'Enter valid password';
                                  } else {
                                    return null;
                                  }
                                },
                                decoration: new InputDecoration(
                                    labelText: 'Confirm Password',
                                    labelStyle:
                                        TextStyle(color: Colors.white70),
                                    prefixIcon: const Icon(
                                      Icons.lock,
                                      color: Colors.white70,
                                    ),
                                    prefixText: ' ',
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
                                        color: Colors.white70,
                                      ),
                                    )),
                                obscureText: !_showPassword,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      if (_formKey.currentState.validate()) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: ((context) =>
                                                    Login())));
                                      } else {
                                        Text("Invalid details");
                                      }
                                    },
                                    child: Container(
                                      width: 70,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.blue[600],
                                            Colors.deepPurple[500],
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
//                                          border: Border.all(
//                                              color: Colors.blue[900]),
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(25),
                                        boxShadow: [
//                                            BoxShadow(
//                                              offset: Offset(5, 5),
//                                              blurRadius: 5,
//                                            )
                                        ],
                                      ),
                                      child: Center(
                                          child: Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                      )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
//                                    GestureDetector(
//                                      onTap: () {},
//                                      child: Container(
//                                        width: 120,
//                                        height: 40,
//                                        decoration: BoxDecoration(
//                                          gradient: LinearGradient(
//                                            colors: [
//                                              Colors.blue[400],
//                                              Colors.purple[500],
//                                            ],
//                                            begin: Alignment.topLeft,
//                                            end: Alignment.bottomRight,
//                                          ),
//                                          border: Border.all(
//                                              color: Colors.blue[900]),
//                                          boxShadow: [
//                                            BoxShadow(
//                                              offset: Offset(5, 5),
//                                              blurRadius: 5,
//                                            )
//                                          ],
//                                        ),
//                                        child: Center(
//                                          child: Text(
//                                            'Cancel',
//                                            style: TextStyle(
//                                              color: Colors.white,
//                                              fontSize: 20,
//                                              fontWeight: FontWeight.w500,
//                                            ),
//                                          ),
//                                        ),
//                                      ),
//                                    ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
