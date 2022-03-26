import 'package:asiato_driver/signin_register_screens/forget_password.dart';
import 'package:asiato_driver/widgets/button.dart';
import 'package:asiato_driver/widgets/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class login_screen extends StatefulWidget {
  const login_screen({Key? key}) : super(key: key);

  @override
  _login_screenState createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  @override
  Widget build(BuildContext context) {
    bool _isObscure = true;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Log in',
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
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to Asiato',
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Enter your Phone number or Email for',
                    style: TextStyle(
                        color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RichText(
                      text: TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: "Sign in, Or ",
                      style: TextStyle(
                          color: Color.fromRGBO(134, 134, 134, 1),
                          fontSize: 16),
                    ),
                    TextSpan(
                      text: " Create new account. ",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffC61820),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => create_acount_screen()),
                          // );
                        },
                    ),
                  ])),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        // color:
                        // Colors.black.withAlpha(15),
                        color: Color.fromRGBO(251, 251, 251, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      width: 334,
                      height: 54,
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            suffixStyle: TextStyle(color: Colors.grey),
                            prefixStyle: TextStyle(color: Colors.grey),
                            hintText: 'Email Address',
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black.withAlpha(15),
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black.withAlpha(15),
                                )),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color(0xffC61820),
                                )),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color(0xffC61820),
                                ))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(251, 251, 251, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      width: 334,
                      height: 54,
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                                icon: Icon(_isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                }),
                            prefixStyle: TextStyle(color: Colors.grey),
                            hintText: 'Password',
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black.withAlpha(15),
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black.withAlpha(15),
                                )),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.red)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.red))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => forgot_password_screen()),
                            // );
                          },
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: Color.fromRGBO(134, 134, 134, 1),
                                fontSize: 12),
                          ))),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  forgot_password_screen()),
                        );
                      },
                      child: widgets().buttons("LOGIN")),
                  SizedBox(
                    height: 5,
                  ),
                ]),
          ),
        ));
  }
}
