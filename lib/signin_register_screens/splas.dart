import 'package:asiato_driver/signin_register_screens/splash2.dart';
import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/splash.png"), fit: BoxFit.cover)),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 12, right: 12, bottom: 50, top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Skip>>",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Center(
                    child: Column(
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/logo.png"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "WELCOME\nASIA TO. ME",
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "It’s a pleasure to meet you. We are excited that\nyou’re here so let’s get started!",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                )),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => splash2()),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Text(
                      "GET STARTED",
                      style: TextStyle(color: Color(0xffBC1C23), fontSize: 16),
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
