import 'package:flutter/material.dart';

import '../../_TapView/Favourites.dart';
import '../../_TapView/populair.dart';
import '../../_TapView/whatsnews.dart';
import '../naviagation_drawer.dart';

class HeadLineNews extends StatefulWidget {
  @override
  _HeadLineNewsState createState() => _HeadLineNewsState();
}



class _HeadLineNewsState extends State<HeadLineNews> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade800,
        title: Text("Explore"),
        centerTitle: false,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed:(){}),
          IconButton(icon: Icon(Icons.more_vert), onPressed:(){}),

        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _tabController,
          tabs: [
            Tab(
              text: "WHATS NEW",
            ),
            Tab(
              text: "POPULAIRE",
            ),
            Tab(
              text: "FAVOURITES",
            ),Tab(
              text: "FAVOURITES",
            ),
          ],
        ),

      ),
      drawer: DrawerAppbar(),
      body: TabBarView(
        children: <Widget> [
          WhatsNews(),
          Populair(),
          Populair(),
          Favourites(),
        ],
        controller: _tabController,

      ),
    );

  }
}