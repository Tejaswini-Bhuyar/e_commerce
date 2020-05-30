import 'package:ecommerce/CategoryContent/CategoryTabBar.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/CategoryContent/CategoriesPage.dart';
class CategoryButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => CategoryTabBar())));
          },
          child: Container(
              height: 40.0,
              width: 320.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.indigo[800], Colors.indigo[500], Colors.indigo[400]]),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(25.0),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black87,
                      blurRadius: 10.0,
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/images/milkbottle.png', width: 50, height: 25),
                  Text(
                    "Categories",
                    style: TextStyle(
                        color: Colors.yellowAccent,
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )
                ],
              )),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
