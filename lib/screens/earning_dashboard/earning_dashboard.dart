import 'package:asiato_driver/screens/earning_dashboard/acept_rate.dart';
import 'package:asiato_driver/screens/earning_dashboard/tips.dart';
import 'package:asiato_driver/screens/earning_dashboard/withdraw.dart';
import 'package:asiato_driver/screens/orderlisting_today/total_earning.dart';
import 'package:asiato_driver/widgets/drawer.dart';
import 'package:flutter/material.dart';

class earning_dashboard extends StatefulWidget {
  @override
  earning_dashboardState createState() => earning_dashboardState();
}

class earning_dashboardState extends State<earning_dashboard>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final topTabs = <Tab>[
    Tab(
      child: Text(
        "Accept Rate",
        style: TextStyle(
          color: Colors.black,
          fontSize: 14.0,
        ),
      ),
    ),
    Tab(
      child: Text(
        "Tips",
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
    Tab(
      child: Text(
        "Withdraw",
        style: TextStyle(
          color: Colors.black,
          fontSize: 14.0,
        ),
      ),
    ),
  ];
  @override
  void initState() {
    _tabController = TabController(length: 4, initialIndex: 0, vsync: this);

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
        title: Text(
          "Friday 21’s January",
          style: TextStyle(
            color: Color(0xffBC1C23),
            fontSize: 15.0,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 5.0),
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
                                indicatorColor: Color(0xffBC1C23),
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
                              children: [
                                accept_rate(),
                                tips(),
                                total_earning(),
                                withdraw()
                              ],
                            ))
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
