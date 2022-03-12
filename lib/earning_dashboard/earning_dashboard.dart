import 'package:asiato_driver/earning_dashboard/acept_rate.dart';
import 'package:asiato_driver/earning_dashboard/tips.dart';
import 'package:asiato_driver/earning_dashboard/withdraw.dart';
import 'package:asiato_driver/orderlisting_today/total_earning.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          height: 50,
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 30.0,
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
            SizedBox(
              height: 10,
            ),
            Text(
              "Order Listing of Today",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.0,
              ),
            )
          ],
        ),
        backgroundColor: Colors.white,
        bottom: TabBar(
          isScrollable: true,
          indicatorColor: Colors.red,
          controller: _tabController,
          tabs: topTabs,
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [accept_rate(), tips(), total_earning(), withdraw()],
      ),
    );
  }
}
