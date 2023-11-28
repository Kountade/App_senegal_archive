import 'dart:ui';
import 'package:archive_senegal/new_pages.dart';
import 'package:archive_senegal/pages/busness.dart';
import 'package:archive_senegal/politique/politiqu.dart';
import 'package:archive_senegal/sante/new_health.dart';
import 'package:archive_senegal/science/science_new.dart';
import 'package:archive_senegal/science/technologie_new.dart';
import 'package:archive_senegal/sport/entertaiment_new.dart';
import 'package:archive_senegal/sport/new_sport.dart';

import 'package:archive_senegal/widget/widget_drawer.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:flutter/material.dart';

import 'home.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> with SingleTickerProviderStateMixin {
  String title = "kounta";

  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Image.asset(
          'images/carte.png',
          scale: 8,
        ),
        centerTitle: true,
        elevation: 100.0,
        backgroundColor: Color(0xFFc41A3B),
      ),
      body: TabBarView(
        controller: _tabController,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          TopTabBar(),
          Center(child: Text("Ca vv", style: TextStyle(fontSize: 45))),
          Center(child: Text("Categories vv", style: TextStyle(fontSize: 45))),
          Center(child: Text("Search", style: TextStyle(fontSize: 45))),
          Center(child: Text("Profil", style: TextStyle(fontSize: 45))),
        ],
      ),
      bottomNavigationBar: Container(
        color: Color(0xFFc41A3B),
        child: TabBar(
          controller: _tabController,
          unselectedLabelColor: Colors.black,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(width: 0.0),
          ),
          labelColor: Colors.white,
          labelStyle: TextStyle(
            fontSize: 10.0,
            fontWeight: FontWeight.bold,
          ),
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.newspaper),
              text: 'News',
            ),
            Tab(
              icon: Icon(Icons.category),
              text: 'Categories',
            ),
            Tab(
              icon: Icon(Icons.search),
              text: 'Search',
            ),
            Tab(
              icon: Icon(Icons.shopping_cart),
              text: 'Cart',
            ),
            Tab(
              icon: Icon(Icons.person),
              text: 'Profil',
            ),
          ],
        ),
      ),
    );
  }
}
////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////

class TopTabBar extends StatefulWidget {
  const TopTabBar({super.key});

  @override
  State<TopTabBar> createState() => _TopTabBarState();
}

class _TopTabBarState extends State<TopTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          color: Color.fromRGBO(239, 219, 219, 1),
          child: TabBar(
            controller: _tabController,
            //indicator: UnderlineTabIndicator(
            //   borderSide: BorderSide(width: 0.0),
            //  ),
            indicatorColor: Color(0xFFc41A3B),
            isScrollable: true,
            unselectedLabelColor: Color(0xFFc41A3B),
            labelColor: Color(0xFFc41A3B),
            indicatorWeight: 5.0,
            tabs: <Widget>[
              Tab(
                text: "A la une",
              ),
              Tab(
                text: "Bussiness",
              ),
              Tab(
                text: "Science",
              ),
              Tab(
                text: "Technology",
              ),
              Tab(
                text: "Sports",
              ),
              Tab(
                text: "Entertainment",
              ),
              Tab(
                text: "Health",
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(controller: _tabController, children: <Widget>[
        Newsall(),
        Business(),
        Science(),
        Technology(),
        Sports(),
        Entertainment(),
        Health(),
      ]),
    );
  }
}
