import 'package:ecommerce/MainHomePage/MainHomePage.dart';
import 'package:ecommerce/MakeAnOrder/CheckoutPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 class BottomBar extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return BottomAppBar(
         shape: CircularNotchedRectangle(),
         notchMargin: 6.0,
         color: Colors.transparent,
         elevation: 9.0,
         clipBehavior: Clip.antiAlias,
         child: Container(
             height: 50.0,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(25.0),
                     topRight: Radius.circular(25.0)
                 ),
                 color: Colors.white
             ),
             child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Container(
                       height: 50.0,
                       width: MediaQuery.of(context).size.width /2 - 40.0,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: <Widget>[
                           InkWell(
                             onTap: (){
                               Navigator.push(context,MaterialPageRoute(
                                   builder: ((context)=>MainHomePage())
                               ));
                             },
                             child: Icon(Icons.home, color: Color(0xFFEF7532)) ,
                           ),
                           InkWell(
                             onTap: (){
                               Navigator.push(context,MaterialPageRoute(
                                   builder: ((context)=>MainHomePage())
                               ));
                             },
                             child:Icon(Icons.person_outline, color: Color(0xFF676E79)) ,
                           ),

                         ],
                       )
                   ),
                   Container(
                       height: 50.0,
                       width: MediaQuery.of(context).size.width /2 - 40.0,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: <Widget>[
                           InkWell(
                             onTap: (){},
                             child: Icon(Icons.search, color: Color(0xFFEF7532)),
                           ),
                           InkWell(
                             onTap: (){
                               Navigator.push(context,MaterialPageRoute(
                                 builder: ((context)=>CakePage())
                               ));
                             },
                             child:Icon(Icons.shopping_basket, color: Color(0xFF676E79)) ,
                           )

                         ],
                       )
                   ),
                 ]
             )
         )
     );
   }
 }