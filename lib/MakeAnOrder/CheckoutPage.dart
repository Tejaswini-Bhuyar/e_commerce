import 'package:ecommerce/SimilarProduct/SimilarProduct.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
class CakePage extends StatelessWidget {
  final assetPath, cookieprice, cookiename;

  CakePage({this.assetPath, this.cookieprice, this.cookiename});
  static final String path = "lib/src/pages/food/cake.dart";


  @override
  Widget build(BuildContext context){
    final Color primary = Color(0xff7b7517);
    final Color background = Color(0xff2f2f4f);
    final Color overlay = Color(0xff212129);
    return Scaffold(
      backgroundColor:Colors.pink[10],
      appBar: GradientAppBar(
        elevation: 0,
        backgroundColorStart: Colors.blue[500],
        backgroundColorEnd: Colors.deepPurple[600],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text('Fruit Cakes',
            style: TextStyle(
            color: Color(0xFFF17532),
            fontSize: 24.0,
            fontWeight: FontWeight.normal
        ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.white,),
            onPressed: (){},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              SizedBox(height: 10.0),
              Text("strawberry & kiwi special", style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 16.0
              ),),

              Container(
                height: 60.0,
                child: ListView(
                  padding: EdgeInsets.all(8.0),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SizedBox(width: 20.0),
                    ChoiceChip(
                      labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      label: Text("1 Kg", style: TextStyle(
                          color: Colors.yellowAccent[100],
                          fontWeight: FontWeight.bold
                      ),),
                      backgroundColor:Colors.blueAccent,
                      selected: true,
                      onSelected: (val){},
                      selectedColor: Colors.deepPurple,
                    ),
                    SizedBox(width: 20.0),
                    ChoiceChip(
                      labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      label: Text("2 Kg", style: TextStyle(
                          color:Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                      backgroundColor:Colors.blueAccent,
                      selected: false,
                      onSelected: (val){},
                      selectedColor: Colors.purple
                    ),
                    SizedBox(width: 20.0),
                    ChoiceChip(
                      labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      label: Text("3 Kg", style: TextStyle(
                          color:Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                      backgroundColor: Colors.blueAccent,
                      selected: false,
                      onSelected: (val){},
                      selectedColor:Colors.purple,
                    ),
                    SizedBox(width: 20.0),
                    ChoiceChip(
                      labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      label: Text("4 Kg", style: TextStyle(
                          color:Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                      backgroundColor:Colors.blueAccent,
                      selected: false,
                      onSelected: (val){},
                      selectedColor:Colors.purple
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 190,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [new BoxShadow(
                    color: Colors.grey[500],
                    blurRadius: 20.0,
                  )]
                ),
                child: Column(
                  children: <Widget>[
                     Row(
                      children: <Widget>[
                        Container(
                          height: 150,
                          width: 250,
                          decoration: BoxDecoration(
//                              image:DecorationImage(
//                                image:AssetImage('assets/images/'),
//                              )

                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20.0),
                                child: Text(
                                    'Amul Product',
                                    style: TextStyle(
                                        fontFamily: 'Varela',
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFF17532))
                                ),
                              ),
//                              Hero(
//                                  tag: assetPath,
//                                  child: Image.asset(assetPath,
//                                      height: 150.0,
//                                      width: 100.0,
//                                      fit: BoxFit.contain
//                                  )
//                              ),
//                              Text(cookiename,
//                                  style: TextStyle(
//                                      color: Color(0xFF575E67),
//                                      fontFamily: 'Varela',
//                                      fontSize: 12.0)),
                            Container(
                          height:120,
                              width: 210,
                            decoration: BoxDecoration(
                                image:DecorationImage(
                                  image: AssetImage('assets/images/sun1.png'),
                                )
                            ),
                            ),

                            ],
                          ),

                        ),

                        Padding(
                          padding:EdgeInsets.only(bottom: 26.0,left: 40.0,top: 2.0
                          ),
                          child:Container(
                            height:160,
                            child:Column(
                              children: <Widget>[
                                Container(
                                  height:140,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10.0),
                                        boxShadow: [new BoxShadow(
                                          color: Colors.grey[500],
                                          blurRadius: 10.0,
                                        )]
                                    ),
                                  child: Column(
                                    children: <Widget>[
                                      IconButton(
                                        icon: Icon(Icons.add,color: Colors.black87,size: 15,),
                                        onPressed: (){},
                                      ),
                                      CircleAvatar(
                                        child: Text("1"),
                                        backgroundColor: Colors.white,
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.remove,color: Colors.black87,size: 15,),
                                        onPressed: (){},
                                      ),
                                    ],
                                  )
                                ),
                                Container(
                                  height: 20,
                                 child:IconButton(
                          icon: Icon(Icons.delete,color: Colors.blueAccent),
                        )
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),

              ),

              Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 20.0),
                  width: double.infinity,
                  child: Text.rich(TextSpan(
                      children: [
                        TextSpan(text: "\$84.", style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold
                        ),),
                        TextSpan(text: "99", style: TextStyle(
                            color: Colors.blueAccent
                        ),)
                      ]
                  )
                  )),
              SizedBox(height: 20.0),
Container(
  height: 200,
      child:SimilarProduct(),
),
//               SimilarProduct(),
              SizedBox(height: 20.0),
              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 20.0),
//                    PNetworkImage(map),
                    SizedBox(width: 20.0),
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("DELIVERY", style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16.0
                            ),),
                            Text("45, Amarlands", style: TextStyle(
                                color: Colors.orangeAccent
                            ),),
                            Text("Nr. Hamer Road, London",style: TextStyle(
                                color: Colors.orangeAccent
                            ),)
                          ]
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  SizedBox(width: 20.0),
                  Text("Ratings", style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 16.0
                  ),),
                  SizedBox(width: 20.0),
                  Icon(Icons.star, color: Colors.blue[400]),
                  Icon(Icons.star, color: Colors.blue[400]),
                  Icon(Icons.star, color: Colors.blue[400]),
                  Icon(Icons.star, color: Colors.blue[400]),
                  Icon(Icons.star_half, color: Colors.blue[400]),
                  Text("(55)", style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0
                  ),)
                ],
              ),
              SizedBox(height: 20.0),
              Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width - 60.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
//                        color: Color(0xFFF17532)
                          gradient: LinearGradient(
                            colors: [
                              Colors.blue[500],
                              Colors.deepPurple[600],
                            ],
                          ),
                      ),
                      child: Center(
                          child: Text('Make order now',
                            style: TextStyle(
                                fontFamily: 'Varela',
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          )
                      )
                  )
              ),
              SizedBox(height: 20.0,)
            ],
          ),
        ),
      ),
    );
  }
}