import 'package:asiato_driver/screens/driver_account.dart';
import 'package:asiato_driver/signin_register_screens/check.dart';
import 'package:asiato_driver/widgets/button.dart';
import 'package:asiato_driver/widgets/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'forget_password.dart';

class otp_screen extends StatelessWidget {
  const otp_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Sign In'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                    child: Text(
                  'Verify phone number',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                )),
                SizedBox(
                  height: 10,
                ),
                Center(
                    child: Text(
                  'Enter the 4-Digit code sent  ',
                  style: TextStyle(
                      color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
                )),
                Center(
                    child: Text(
                  'to you at +1501333982 ',
                  style: TextStyle(
                      color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
                )),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: PinCodeTextField(
                    // controller:otpfield123  ,
                    length: 4,
                    obscureText: false,
                    animationType: AnimationType.fade,

                    pinTheme: PinTheme(
                      activeColor: Color(0xff868686),
                      inactiveColor: Color(0xff868686),
                      selectedColor: Color(0xff868686),
                      disabledColor: Color(0xff868686),
                      selectedFillColor: Color(0xff868686),
                      shape: PinCodeFieldShape.underline,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeFillColor: Colors.white,
                    ),
                    animationDuration: Duration(milliseconds: 300),
                    enableActiveFill: false,

                    // onCompleted: (v) {
                    //   print("Completed");
                    //   value=v;
                    // },
                    // onChanged: (value) {
                    //   print(value);
                    //   setState(() {
                    //     currenttext = value;
                    //   });
                    // },
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");

                      return true;
                    },
                    appContext: context,
                    onChanged: (String value) {},
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => check()),
                      );
                    },
                    child: widgets().buttons("CONTINUE")),
                SizedBox(
                  height: 20,
                ),
                RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: "Didn’t receive code? ",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  TextSpan(
                    text: "Resend Again.",
                    style: TextStyle(color: Color(0xffC61820), fontSize: 12),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ])),
                SizedBox(
                  height: 15,
                ),
                Center(
                    child: Text(
                  'By Signing up you agree to our ',
                  style: TextStyle(
                      color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
                )),
                Center(
                    child: Text(
                  'Terms Conditions & Privacy Policy.',
                  style: TextStyle(
                      color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
                )),
              ],
            ),
          ),
        ));
  }
}
