import 'package:asiato_driver/widgets/drawer.dart';

import 'total_earning.dart';
import 'total_order.dart';
import 'package:flutter/material.dart';

class orderlisting_today extends StatefulWidget {
  @override
  _orderlisting_todayState createState() => _orderlisting_todayState();
}

class _orderlisting_todayState extends State<orderlisting_today>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final topTabs = <Tab>[
    Tab(
      child: Text(
        "Total Orders",
        style: TextStyle(
          color: Colors.black,
          fontSize: 14.0,
        ),
      ),
    ),
    Tab(
      child: Text(
        "Total Earning",
        style: TextStyle(
          color: Colors.black,
          fontSize: 14.0,
        ),
      ),
    ),
  ];
  @override
  void initState() {
    _tabController = TabController(length: 2, initialIndex: 0, vsync: this);

    super.initState();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Drawer(
        elevation: 16.0,
        child: drawer(),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 13.0),
            Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 40.0,
                child: TextField(
                  decoration: new InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(12, 10, 12, 10),
                    hintText: 'Search food nearby',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 0.0, right: 0.0),
                      child: Icon(
                        Icons.search,
                        color: Color(0xFF4F4F4F),
                      ),
                    ),
                    hintStyle: TextStyle(
                      color: Color(0xff4F4F4F),
                      fontSize: 14.0,
                    ),
                    filled: true,
                    fillColor: Color(0xFFF3F3F3),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide:
                          BorderSide(color: Color(0xFFF3F3F3), width: 0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide:
                          BorderSide(color: Color(0xFFF3F3F3), width: 0),
                    ),
                  ),
                )),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () => _scaffoldKey.currentState!.openEndDrawer(),
            child: Icon(
              Icons.menu_outlined,
              color: Colors.black,
              size: 30.0,
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text(
                  "Order Listing of Today",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          color: Color(0xffF2F2F2),
                          child: Center(
                            child: Container(
                              child: TabBar(
                                isScrollable: true,
                                indicatorColor: Colors.red,
                                controller: _tabController,
                                tabs: topTabs,
                              ),
                            ),
                          ),
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height * 0.692,
                            child: TabBarView(
                                physics: NeverScrollableScrollPhysics(),
                                controller: _tabController,
                                children: <Widget>[
                                  total_order(),
                                  total_earning()
                                ]))
                      ])),
            ]),
        //
        //
        // TabBarView(
        //   physics: NeverScrollableScrollPhysics(),
        //   controller: _tabController,
        //   children: [total_order(), total_earning()],
      ),
    );
  }
}
