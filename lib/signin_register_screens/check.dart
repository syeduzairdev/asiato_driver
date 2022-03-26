import 'package:asiato_driver/screens/driver_account.dart';
import 'package:asiato_driver/widgets/widgets.dart';
import 'package:flutter/material.dart';

class check extends StatefulWidget {
  const check({Key? key}) : super(key: key);

  @override
  State<check> createState() => _checkState();
}

class _checkState extends State<check> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Forgot Password',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
          color: Colors.white,
        ),
        elevation: 0.0,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, top: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    color: Color(0xffC61820),
                    borderRadius: BorderRadius.circular(12)),
                child: Image(image: AssetImage("assets/check.png")),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Your password\nwas reset",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => driver_account()),
                    );
                  },
                  child: widgets().buttons("LOGIN")),
            ],
          ),
        ),
      ),
    );
  }
}
