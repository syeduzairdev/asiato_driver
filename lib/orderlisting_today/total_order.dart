import 'package:asiato_driver/earning_dashboard/earning_dashboard.dart';
import 'package:flutter/material.dart';

class total_order extends StatefulWidget {
  const total_order({Key? key}) : super(key: key);

  @override
  State<total_order> createState() => _total_orderState();
}

class _total_orderState extends State<total_order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              for (var i = 0; i < 5; i++)
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => SingleChildScrollView(
                        child: AlertDialog(
                          titlePadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          title: Container(
                              height: 40,
                              color: Color(0xffBC1C23),
                              child: Center(
                                  child: Text('ORDER ID: ACR41524',
                                      style: TextStyle(
                                        color: Colors.white,
                                      )))),
                          content: Column(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(10.0),
                                      height: 130,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: new BoxDecoration(
                                          color: Color(0xffF9F9F9),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 50,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(20.0),
                                                  topRight:
                                                      Radius.circular(20.0)),
                                              color: Color(0xff1B1B1B),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10.0),
                                              child: Center(
                                                child: Text(
                                                  'Order',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Deal 1',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            136, 136, 136, 1)),
                                                  ),
                                                  Text(
                                                    '\$29.00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '7up Regular 250ml',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            136, 136, 136, 1)),
                                                  ),
                                                  Text(
                                                    '\$9.00',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Color(0xff323232),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Deleivery Charge',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            136, 136, 136, 1)),
                                                  ),
                                                  Text(
                                                    '\$1.50',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Color(0xff323232),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Total',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            136, 136, 136, 1)),
                                                  ),
                                                  Text(
                                                    ' \$32.00',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Color(0xffBC1C23),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(10.0),
                                      height: 130,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: new BoxDecoration(
                                          color: Color(0xffF9F9F9),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 50,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(20.0),
                                                  topRight:
                                                      Radius.circular(20.0)),
                                              color: Color(0xff1B1B1B),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10.0),
                                              child: Center(
                                                child: Text(
                                                  'Location',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .location_on_outlined,
                                                        color:
                                                            Color(0xffBC1C23),
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        'Street 48,Hunters Road,Victory',
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    136,
                                                                    136,
                                                                    136,
                                                                    1)),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .navigation_outlined,
                                                        color:
                                                            Color(0xffBC1C23),
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        'Street 48,Hunters Road,Victory',
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    136,
                                                                    136,
                                                                    136,
                                                                    1)),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(10.0),
                                      height: 110,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: new BoxDecoration(
                                          color: Color(0xffF9F9F9),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 50,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(20.0),
                                                  topRight:
                                                      Radius.circular(20.0)),
                                              color: Color(0xff1B1B1B),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10.0),
                                              child: Center(
                                                child: Text(
                                                  'Customer',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Name',
                                                      style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              136,
                                                              136,
                                                              136,
                                                              1)),
                                                    ),
                                                    Text(
                                                      'Saman John',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Mobile Number',
                                                      style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              136,
                                                              136,
                                                              136,
                                                              1)),
                                                    ),
                                                    Text(
                                                      '(+91) 65656333',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color:
                                                            Color(0xff323232),
                                                      ),
                                                    )
                                                  ],
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
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(10.0),
                                      height: 90,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: new BoxDecoration(
                                          color: Color(0xffF9F9F9),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 50,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(20.0),
                                                  topRight:
                                                      Radius.circular(20.0)),
                                              color: Color(0xff1B1B1B),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10.0),
                                              child: Center(
                                                child: Text(
                                                  'Customer',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Payment Method',
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          136, 136, 136, 1)),
                                                ),
                                                Text(
                                                  'Online',
                                                  style: TextStyle(
                                                      color: Color(0xffBC1C23),
                                                      fontWeight:
                                                          FontWeight.w700),
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
                            ],
                          ),
                          actions: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      SingleChildScrollView(
                                    child: AlertDialog(
                                      titlePadding:
                                          EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      contentPadding:
                                          EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      title: Container(
                                          height: 40,
                                          color: Color(0xffBC1C23),
                                          child: Center(
                                              child: Text(
                                                  'Specific Reason To Reject Order',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18)))),
                                      content: Column(
                                        children: [
                                          Container(
                                            child: Column(
                                              children: [
                                                Container(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          child: TextField(
                                                            decoration:
                                                                InputDecoration(
                                                                    hintText:
                                                                        "Write Here"),
                                                          )),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      actions: <Widget>[
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xffF9F9F9),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            height: 45.0,
                                            width: 100,
                                            child: Center(
                                              child: Text(
                                                'cancel',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xffBC1C23),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            height: 50.0,
                                            width: 100,
                                            child: Center(
                                              child: Text(
                                                'Send',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffF9F9F9),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 50.0,
                                width: 100,
                                child: Center(
                                  child: Text(
                                    'Reject',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          earning_dashboard()),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffBC1C23),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 50.0,
                                width: 100,
                                child: Center(
                                  child: Text(
                                    'Accept',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Container(
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
                ),
            ],
          ),
        ),
      ),
    );
  }
}
