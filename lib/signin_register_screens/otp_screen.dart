import 'package:asiato_driver/signin_register_screens/verify_phone_number.dart';
import 'package:asiato_driver/widgets/button.dart';
import 'package:asiato_driver/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class phone_number_screen extends StatelessWidget {
  const phone_number_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            'Login to Asia to Me',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Center(
                    child: Text(
                  'Get started with Asiato',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                )),
                SizedBox(
                  height: 15,
                ),
                Center(
                    child: Text(
                  'Enter your phone number to use foodly ',
                  style: TextStyle(
                      color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
                )),
                Center(
                    child: Text(
                  'and enjoy your food. ',
                  style: TextStyle(
                      color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
                )),
                SizedBox(
                  height: 30,
                ),
                Container(
                  color: Colors.white,
                  width: 334,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: IntlPhoneField(
                      disableLengthCheck: true,
                      flagsButtonPadding: EdgeInsets.only(bottom: 5.0),
                      decoration: InputDecoration(
                          labelText: 'Phone Number',
                          enabledBorder: InputBorder.none),
                      initialCountryCode: 'US',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => otp_screen()),
                      );
                    },
                    child: widgets().buttons("SIGN UP")),
              ],
            ),
          ),
        ));
  }
}
