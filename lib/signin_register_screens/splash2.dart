import 'package:asiato_driver/signin_register_screens/sign_in.dart';
import 'package:asiato_driver/widgets/widgets.dart';
import 'package:flutter/material.dart';

class splash2 extends StatefulWidget {
  const splash2({Key? key}) : super(key: key);

  @override
  State<splash2> createState() => _splash2State();
}

class _splash2State extends State<splash2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100, bottom: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    height: 270,
                    width: 270,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/bike.png"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    height: 270,
                    width: 240,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/stacks.png"),
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "All Delivery offer",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Free delivery for new customers via Apple Pay\nand others payment methods.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
              ),
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => login_screen()),
                      );
                    },
                    child: widgets().buttons(
                      "GET STARTED",
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
