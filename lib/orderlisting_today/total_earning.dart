import 'package:flutter/material.dart';

class total_earning extends StatefulWidget {
  const total_earning({Key? key}) : super(key: key);

  @override
  State<total_earning> createState() => _total_earningState();
}

class _total_earningState extends State<total_earning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 100,
                  width: 180,
                  decoration: new BoxDecoration(
                      color: Color(0xffBC1C23),
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
            ],
          ),
        ),
      ),
    );
  }
}
