import 'package:ecommerce/CategoryContent/CategoryTabBar.dart';
import 'package:ecommerce/RegistrationPage/RegistrationPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class mydrawer extends StatefulWidget {
  @override
  _mydrawerState createState() => _mydrawerState();
}

class _mydrawerState extends State<mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.black
                ),
                accountName: Text("Tejaswini bhuyar",
                  style: TextStyle(color: Colors.blue),),
                accountEmail: Text("tejaswi12@gmail.com",
                  style: TextStyle(color: Colors.blue),),
                currentAccountPicture: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage("assets/images/cartoon.jpg"),
                ),
              ),
              new Divider(
                color: Colors.amber,
              ),
              ListTile(
                leading: Icon(Icons.dashboard, color: Colors.amber,),
                title: Text("Category",
                  style: TextStyle(
                      color: Colors.amber
                  ),),
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(
                      builder: ((context)=>CategoryTabBar())
                  ));
                },
              ),
              ListTile(
                leading: Icon(Icons.assignment_ind,  color: Colors.amber,),
                title: Text("Registration",
                  style: TextStyle(
                      color: Colors.amber
                  ),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: ((context)=>RegistrationPage())
                  ));
                },
              ),
              ListTile(
                leading: Icon(Icons.dashboard,  color: Colors.amber,),
                title: Text("DashBoard",
                  style: TextStyle(
                      color: Colors.amber
                  ),),
              ),
            ],
          ),
        ),
    );
  }
}
