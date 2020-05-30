import 'package:ecommerce/BottomBar/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'CategoriesPage.dart';

class CategoryTabBar extends StatefulWidget {
  @override
  _CategoryTabBarState createState() => _CategoryTabBarState();
}

class _CategoryTabBarState extends State<CategoryTabBar>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        backgroundColorStart: Colors.blue[500],
        backgroundColorEnd: Colors.deepPurple[600],
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white70),
          onPressed: () {},
        ),
        title: Text('its yummy!',
            style: TextStyle(
                fontFamily: 'Varela',
                color: Color(0xFFF17532),
                fontSize: 25.0,
                fontWeight: FontWeight.bold)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.white70),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 15.0),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Color(0xFFC88D67),
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 45.0),
              unselectedLabelColor: Color(0xFFCDCDCD),
              tabs: [
                Tab(
                  child: Text('Cookies',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Cookie cake',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Ice cream',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                )
              ]),
          Container(
              height: MediaQuery.of(context).size.height - 50.0,
              width: double.infinity,
              child: TabBarView(controller: _tabController, children: [
                CookiesPage(),
                CookiesPage(),
                CookiesPage(),
              ]))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
