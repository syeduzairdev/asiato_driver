import 'package:asiato_driver/contact_us.dart';
import 'package:asiato_driver/help_center.dart';
import 'package:flutter/material.dart';

class my_wallet extends StatefulWidget {
  const my_wallet({Key? key}) : super(key: key);

  @override
  State<my_wallet> createState() => _my_walletState();
}

class _my_walletState extends State<my_wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 70.0,
        leadingWidth: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0, left: 40.0),
            child: IconButton(
              icon: Icon(
                Icons.menu_outlined,
                color: Colors.black,
                size: 30.0,
              ),
              onPressed: () {},
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
                        builder: (BuildContext context) => contact_us()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'My Wallet',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
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
                height: 24.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 100,
                  width: 180,
                  decoration: new BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Today",
                          style: TextStyle(color: Colors.white, fontSize: 17.0),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "\$345.00",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "02 feb,2021",
                          style: TextStyle(color: Colors.white, fontSize: 17.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              for (var i = 0; i <= 3; i++)
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10),
                    height: 90,
                    width: MediaQuery.of(context).size.width,
                    decoration: new BoxDecoration(
                      color: Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Order ID: ',
                              style: TextStyle(
                                  color: Color.fromRGBO(136, 136, 136, 1)),
                            ),
                            Text(
                              'ACR145786',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Payment Method :',
                              style: TextStyle(
                                  color: Color.fromRGBO(136, 136, 136, 1)),
                            ),
                            Text(
                              ' Online',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Date:  ',
                                  style: TextStyle(
                                      color: Color.fromRGBO(136, 136, 136, 1)),
                                ),
                                Text(
                                  '02 feb, 2021',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Text(
                              '\$345.00',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color(0xffBC1C23),
                              ),
                            ),
                          ],
                        ),
                      ],
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
                        'Yesterday',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18.0),
                      ),
                    )),
              ),
              SizedBox(
                height: 24.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 100,
                  width: 180,
                  decoration: new BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Today",
                          style: TextStyle(color: Colors.white, fontSize: 17.0),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "\$345.00",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "02 feb,2021",
                          style: TextStyle(color: Colors.white, fontSize: 17.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              for (var i = 0; i <= 1; i++)
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10),
                    height: 90,
                    width: MediaQuery.of(context).size.width,
                    decoration: new BoxDecoration(
                      color: Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Order ID: ',
                              style: TextStyle(
                                  color: Color.fromRGBO(136, 136, 136, 1)),
                            ),
                            Text(
                              'ACR145786',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Payment Method :',
                              style: TextStyle(
                                  color: Color.fromRGBO(136, 136, 136, 1)),
                            ),
                            Text(
                              ' Online',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Date:  ',
                                  style: TextStyle(
                                      color: Color.fromRGBO(136, 136, 136, 1)),
                                ),
                                Text(
                                  '02 feb, 2021',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Text(
                              '\$345.00',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color(0xffBC1C23),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              SizedBox(
                height: 12.0,
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
                height: 24.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 100,
                  width: 180,
                  decoration: new BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Today",
                          style: TextStyle(color: Colors.white, fontSize: 17.0),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "\$345.00",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "02 feb,2021",
                          style: TextStyle(color: Colors.white, fontSize: 17.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              for (var i = 0; i <= 0; i++)
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10),
                    height: 90,
                    width: MediaQuery.of(context).size.width,
                    decoration: new BoxDecoration(
                      color: Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Order ID: ',
                              style: TextStyle(
                                  color: Color.fromRGBO(136, 136, 136, 1)),
                            ),
                            Text(
                              'ACR145786',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Payment Method :',
                              style: TextStyle(
                                  color: Color.fromRGBO(136, 136, 136, 1)),
                            ),
                            Text(
                              ' Online',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Date:  ',
                                  style: TextStyle(
                                      color: Color.fromRGBO(136, 136, 136, 1)),
                                ),
                                Text(
                                  '02 feb, 2021',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Text(
                              '\$345.00',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color(0xffBC1C23),
                              ),
                            ),
                          ],
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
