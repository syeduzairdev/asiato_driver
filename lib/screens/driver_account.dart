import 'package:asiato_driver/screens/order_history.dart';
import 'package:asiato_driver/widgets/drawer.dart';
import 'package:asiato_driver/widgets/widgets.dart';
import 'package:flutter/material.dart';

class driver_account extends StatefulWidget {
  const driver_account({Key? key}) : super(key: key);

  @override
  State<driver_account> createState() => _driver_accountState();
}

class _driver_accountState extends State<driver_account> {
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
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 70.0,
        leadingWidth: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0, left: 40.0),
            child: GestureDetector(
              onTap: () => _scaffoldKey.currentState!.openEndDrawer(),
              child: Icon(
                Icons.menu_outlined,
                color: Colors.black,
                size: 30.0,
              ),
            ),
          ),
        ],
        title: Container(
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
                  borderSide: BorderSide(color: Color(0xFFF3F3F3), width: 0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  borderSide: BorderSide(color: Color(0xFFF3F3F3), width: 0),
                ),
              ),
            )),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Driver Account",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                ),
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      height: 190,
                      width: 190,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/driverpic.png"))),
                    ),
                    Positioned(
                      left: 124,
                      top: 130,
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Color(0xffBC1C23), shape: BoxShape.circle),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              widgets().driverProfile("username", "Cameron Williamson"),
              SizedBox(
                height: 5,
              ),
              Divider(
                color: Color(0xffD7D7D7),
              ),
              widgets().driverProfile("Password", "**********"),
              SizedBox(
                height: 5,
              ),
              Divider(
                color: Color(0xffD7D7D7),
              ),
              widgets().driverProfile("Phone", "92315565344"),
              SizedBox(
                height: 5,
              ),
              Divider(
                color: Color(0xffD7D7D7),
              ),
              widgets().driverProfile("Email", "sumanayak@gmail.com"),
              SizedBox(
                height: 5,
              ),
              Divider(
                color: Color(0xffD7D7D7),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => history()),
                      );
                    },
                    child: widgets().buttons("SAVE")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
