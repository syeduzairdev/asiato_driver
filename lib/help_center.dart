import 'package:asiato_driver/orderlisting_today/orderlisting_today.dart';
import 'package:asiato_driver/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'order_history.dart';

class help_center extends StatelessWidget {
  const help_center({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 145.0),
                child: Text(
                  'Help Center',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35.0),
                child: Text(
                  'Help centre the problem, and its solutions',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 150,
                  decoration: new BoxDecoration(
                    color: Color.fromRGBO(242, 242, 242, 1),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Color.fromRGBO(242, 242, 242, 1),
                    ),
                  ),
                  child: InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Help centre learn more about the App',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                Icons.expand_more_outlined,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Center(
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisl in mattis tempus in id. Sed amet mattis est pharetra, fringilla. Eros ultrices id morbi lobortis vulputate. Eu quis facilisis id arcu facilisis augue venenatis risus a.',
                              maxLines: 4,
                              style: TextStyle(color: Color(0xff9C9A9A)),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              widgets().help_center(
                context,
                'Payment Options',
              ),
              SizedBox(
                height: 20.0,
              ),
              widgets().help_center(
                context,
                'Delivery',
              ),
              SizedBox(
                height: 20.0,
              ),
              widgets().help_center(context, 'Get help  with orders'),
              SizedBox(
                height: 40.0,
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
                  child: widgets().buttons("SUBMIT")),
            ],
          ),
        ),
      ),
    );
  }
}
