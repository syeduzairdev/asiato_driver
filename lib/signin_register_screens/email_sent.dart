import 'package:asiato_driver/signin_register_screens/otp_screen.dart';
import 'package:asiato_driver/signin_register_screens/sign_in.dart';
import 'package:asiato_driver/signin_register_screens/verify_phone_number.dart';
import 'package:asiato_driver/widgets/button.dart';
import 'package:asiato_driver/widgets/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class reset_email_screen extends StatelessWidget {
  const reset_email_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Reset Password ',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Reset email sent',
                  style: TextStyle(color: Colors.black, fontSize: 34),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'We have sent a instructions email to ',
                  style: TextStyle(
                      color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
                ),
                SizedBox(
                  height: 5,
                ),
                RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: " Nawfazim@icloud.com.",
                    style: TextStyle(
                        color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
                  ),
                  TextSpan(
                    text: " Having problem? ",
                    style: TextStyle(
                      color: Color(0xffBC1C23),
                      fontSize: 16,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => login_screen()),
                        );
                      },
                  ),
                ])),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                phone_number_screen()),
                      );
                    },
                    child: widgets().buttons("SIGN UP")),
              ]),
        ));
  }
}
