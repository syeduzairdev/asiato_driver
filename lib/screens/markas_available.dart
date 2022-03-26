import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'orderlisting_today/orderlisting_today.dart';

class markas_available extends StatefulWidget {
  const markas_available({Key? key}) : super(key: key);

  @override
  State<markas_available> createState() => _markas_availableState();
}

class _markas_availableState extends State<markas_available> {
  @override
  Widget build(BuildContext context) {
    final Color activeColor = Color(0xffBC1C23);
    bool value = false;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/map.png",
              ),
              fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 70),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "You're online",
                        style: TextStyle(color: Color(0xff9F9F9F)),
                      ),
                      CupertinoSwitch(
                        activeColor: activeColor,
                        value: !value,
                        onChanged: (v) => setState(() {
                          value = !value;
                        }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 170,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.expand_less_outlined,
                        color: Color(0xffBC1C23),
                        size: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mark As Available",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Turn on to Receive order",
                                  style: TextStyle(color: Color(0xff9F9F9F)),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          orderlisting_today()),
                                );
                              },
                              child: Container(
                                width: 140,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xffBC1C23),
                                ),
                                child: Center(
                                    child: Text(
                                  "ON-DUTY",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                )),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: 150,
                    height: 04,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffBC1C23),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
