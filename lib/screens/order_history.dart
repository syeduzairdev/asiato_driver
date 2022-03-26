import 'package:asiato_driver/screens/my_wallet.dart';
import 'package:asiato_driver/widgets/drawer.dart';
import 'package:flutter/material.dart';

class history extends StatelessWidget {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => my_wallet()),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Order History',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 28.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: new BoxDecoration(
                    color: Color(0xffBC1C23),
                  ),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Today',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0),
                        ),
                      )),
                ),
                SizedBox(
                  height: 10.0,
                ),
                for (var i = 0; i < 3; i++)
                  Container(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10.0),
                          height: 130,
                          width: MediaQuery.of(context).size.width,
                          decoration: new BoxDecoration(
                              color: Color(0xffF9F9F9),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, top: 10.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xffBC1C23),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      height: 50.0,
                                      width: 40,
                                      child: Center(
                                          child:
                                              Image.asset('assets/glass.png')),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, top: 10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Order ID: ',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      136, 136, 136, 1)),
                                            ),
                                            Text(
                                              'ACR145786',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Payment Method:',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      136, 136, 136, 1)),
                                            ),
                                            Text(
                                              ' Online',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xff323232),
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Total Payment :',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      136, 136, 136, 1)),
                                            ),
                                            Text(
                                              ' \$32.00',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xffBC1C23),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 50,
                                //color: Colors.deepPurple,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0)),
                                  color: Color(0xff1B1B1B),
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Order Status:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        ' Delivered',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: new BoxDecoration(
                    color: Color(0xffBC1C23),
                  ),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Yesterday',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0),
                        ),
                      )),
                ),
                SizedBox(
                  height: 10.0,
                ),
                for (var i = 0; i < 2; i++)
                  Container(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10.0),
                          // padding: EdgeInsets.all(10),
                          height: 130,
                          width: MediaQuery.of(context).size.width,
                          decoration: new BoxDecoration(
                              color: Color(0xffF9F9F9),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, top: 10.0),
                                    child: Container(
                                      height: 50.0,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: Color(0xffBC1C23),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                          child:
                                              Image.asset('assets/glass.png')),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, top: 10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Order ID: ',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      136, 136, 136, 1)),
                                            ),
                                            Text(
                                              'ACR145786',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Payment Method:',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      136, 136, 136, 1)),
                                            ),
                                            Text(
                                              ' Online',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xff323232),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Total Payment :',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      136, 136, 136, 1)),
                                            ),
                                            Text(
                                              ' \$32.00',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xffBC1C23),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 50,
                                //color: Colors.deepPurple,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0)),
                                  color: Color(0xff1B1B1B),
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Order Status:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        ' Delivered',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: new BoxDecoration(
                    color: Color(0xffBC1C23),
                  ),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Last Day',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0),
                        ),
                      )),
                ),
                SizedBox(
                  height: 10.0,
                ),
                for (var i = 0; i < 2; i++)
                  Container(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10.0),
                          // padding: EdgeInsets.all(10),
                          height: 130,
                          width: MediaQuery.of(context).size.width,
                          decoration: new BoxDecoration(
                              color: Color(0xffF9F9F9),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, top: 10.0),
                                    child: Container(
                                      height: 50.0,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: Color(0xffBC1C23),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                          child:
                                              Image.asset('assets/glass.png')),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, top: 10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Order ID: ',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      136, 136, 136, 1)),
                                            ),
                                            Text(
                                              'ACR145786',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Payment Method:',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      136, 136, 136, 1)),
                                            ),
                                            Text(
                                              ' Online',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Total Payment :',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      136, 136, 136, 1)),
                                            ),
                                            Text(
                                              ' \$32.00',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xffBC1C23),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 50,
                                //color: Colors.deepPurple,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0)),
                                  color: Color(0xff1B1B1B),
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Order Status:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        ' Delivered',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ));
  }
}
