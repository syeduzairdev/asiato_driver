import 'package:asiato_driver/screens/driver_account.dart';
import 'package:asiato_driver/signin_register_screens/sign_in.dart';
import 'package:asiato_driver/signin_register_screens/splas.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: 'Driver', home: splash());
  }
}
