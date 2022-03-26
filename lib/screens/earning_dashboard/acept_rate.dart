import 'package:flutter/material.dart';

class accept_rate extends StatefulWidget {
  const accept_rate({Key? key}) : super(key: key);

  @override
  State<accept_rate> createState() => _accept_rateState();
}

class _accept_rateState extends State<accept_rate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          children: [
            for (var i = 0; i <= 7; i++)
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
                            'Payment Accept Rate :',
                            style: TextStyle(
                                color: Color.fromRGBO(136, 136, 136, 1)),
                          ),
                          Text(
                            ' \$24.00',
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
                            '\$24.00',
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
        )),
      ),
    );
  }
}
