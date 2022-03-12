import 'package:asiato_driver/widgets/widgets.dart';
import 'package:flutter/material.dart';

class withdraw extends StatefulWidget {
  const withdraw({Key? key}) : super(key: key);

  @override
  State<withdraw> createState() => _withdrawState();
}

class _withdrawState extends State<withdraw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Withdraw',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                      color: Color(0xff464444),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Balance",
                        style: TextStyle(color: Colors.white, fontSize: 35),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "\$9,402",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                      ),
                    ],
                  )),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffBC1C23),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 45.0,
                    width: 120,
                    child: Center(
                      child: Text(
                        'Withdraw',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Transaction History',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                SizedBox(
                  height: 20,
                ),
                widgets().withdraw(
                    "assets/paypal.png", "Paypal", "***5122", "+\$590"),
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 8, bottom: 8),
                  child: Divider(),
                ),
                widgets().withdraw("assets/mastercard.png", "MasterCard",
                    "***9374", "-\$1,250"),
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 8, bottom: 8),
                  child: Divider(),
                ),
                widgets()
                    .withdraw("assets/visa.png", "Visa", "***8459", "+\$2520"),
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 8, bottom: 8),
                  child: Divider(),
                ),
                widgets().withdraw("assets/mastercard.png", "MasterCard",
                    "***9374", "+\$1,250"),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
