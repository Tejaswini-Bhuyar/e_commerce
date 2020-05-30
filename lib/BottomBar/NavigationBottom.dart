import 'package:flutter/material.dart';
 class NavigationBottom extends StatefulWidget {
   @override
   _NavigationBottomState createState() => _NavigationBottomState();
 }

 class _NavigationBottomState extends State<NavigationBottom> {
   @override
   Widget build(BuildContext context) {
     return Container(
       width: MediaQuery
           .of(context)
           .size
           .width,
       height: 50.0,
       child: Row(
         mainAxisSize: MainAxisSize.max,
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: <Widget>[
           Flexible(
             fit: FlexFit.tight,
             flex: 1,
             child: RaisedButton(
               onPressed: () {},
               color: Colors.grey,
               child: Center(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Icon(
                       Icons.list,
                       color: Colors.white,
                     ),
                     SizedBox(
                       width: 4.0,
                     ),
                     Text(
                       "SAVE",
                       style: TextStyle(color: Colors.white),
                     ),
                   ],
                 ),
               ),
             ),
           ),
           Flexible(
             flex: 2,
             child: RaisedButton(
               onPressed: () {},
               color: Colors.greenAccent,
               child: Center(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Icon(
                       Icons.card_travel,
                       color: Colors.white,
                     ),
                     SizedBox(
                       width: 4.0,
                     ),
                     Text(
                       "ADD TO BAG",
                       style: TextStyle(color: Colors.white),
                     ),
                   ],
                 ),
               ),
             ),
           ),
         ],
       ),
     );
   }
 }