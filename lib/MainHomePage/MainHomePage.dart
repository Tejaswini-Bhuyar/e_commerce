import 'package:ecommerce/BottomBar/NavigationBottom.dart';
import 'package:ecommerce/CategoryContent/CategoryButton.dart';
import 'package:ecommerce/CategoryContent/CategoryDrawer.dart';
import 'package:ecommerce/CategoryContent/CategoryTabBar.dart';
import 'package:ecommerce/ProductGridMainPage/ProductGridMainPage.dart';
import 'package:ecommerce/RegistrationPage/RegistrationPage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';


import '../BottomBar/bottom_bar.dart';
class MainHomePage extends StatefulWidget {
  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_slider_carousel = Container(
      height: 150,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('assets/images/dairyproduct.jpg'),
          AssetImage('assets/images/icecream.jpg'),
          AssetImage('assets/images/icecream2.jpg'),
          AssetImage('assets/images/yogurt.jpg'),
          AssetImage('assets/images/yogurt2.jpg'),
        ],
        autoplay: true,
        showIndicator: false,
      ),
    );
    return Scaffold(

      drawer:Drawer(
        child: Container(
          decoration: BoxDecoration(

          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blue[600],Colors.deepPurple[500],]
          )
          ),
          child:ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                ),
                accountName: Text("Tejaswini bhuyar",
                  style: TextStyle(color: Colors.black,fontSize: 15),),
                accountEmail: Text("tejaswi12@gmail.com",
                  style: TextStyle(color: Colors.pink,fontSize: 15),),
                currentAccountPicture: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage("assets/images/cartoon.jpg"),
                ),
              ),
Divider(
  color: Colors.white,
      ),
            new Container(

              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.dashboard, color: Colors.deepPurple,),
                    title: Text("Category",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 16,
                      ),),
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(
                          builder: ((context)=>CategoryTabBar())
                      ));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.assignment_ind,  color: Colors.deepPurple,),
                    title: Text("Registration",
                      style: TextStyle(
                          color: Colors.deepPurple,
                        fontSize: 16,
                      ),),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: ((context)=>RegistrationPage())
                      ));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.dashboard,  color: Colors.deepPurple,),
                    title: Text("DashBoard",
                      style: TextStyle(
                          color: Colors.deepPurple,
                        fontSize: 16,
                      ),),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      ), // here the desired height
      appBar: GradientAppBar(
        title: Text(
          'itsYummy!',
          style: TextStyle(
            color:  Color(0xFFF17532),
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColorStart: Colors.blue[500],
        backgroundColorEnd: Colors.deepPurple[600],

        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          // action button
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          image_slider_carousel,
          Divider(
            color: Colors.white70,
            thickness: 10.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Top Selling',
                      style: TextStyle(color: Colors.redAccent,fontSize: 15,fontWeight: FontWeight.bold)),
                  GestureDetector(
                      onTap: (){},
                      child:Text('View All',
                        style: TextStyle(color: Colors.blueAccent),)
                  ),
                ],
              ),

          ),

          Divider(
            color: Colors.white70,
            thickness: 5.0,
          ),
//          StaggeredGridExample(),
          Container(
            height: 420,
            child:ProductGridMainPage() ,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {},
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}

