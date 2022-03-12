import 'package:asiato_driver/help_center.dart';
import 'package:asiato_driver/widgets/widgets.dart';
import 'package:flutter/material.dart';

class contact_us extends StatefulWidget {
  const contact_us({Key? key}) : super(key: key);

  @override
  State<contact_us> createState() => _contact_usState();
}

class _contact_usState extends State<contact_us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 70.0,
        leadingWidth: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0, left: 40.0),
            child: IconButton(
              icon: Icon(
                Icons.menu_outlined,
                color: Colors.black,
                size: 30.0,
              ),
              onPressed: () {},
            ),
          ),
        ],
        title: Container(
            height: 30.0,
            child: TextField(
              decoration: new InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(12, 10, 12, 10),
                hintText: 'Search food nearby',
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 0.0, right: 0.0),
                  child: Icon(
                    Icons.search,
                    color: Color(0xFF4F4F4F),
                  ),
                ),
                hintStyle: TextStyle(
                  color: Color(0xff4F4F4F),
                  fontSize: 14.0,
                ),
                filled: true,
                fillColor: Color(0xFFF3F3F3),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  borderSide: BorderSide(color: Color(0xFFF3F3F3), width: 0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  borderSide: BorderSide(color: Color(0xFFF3F3F3), width: 0),
                ),
              ),
            )),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 145.0),
                  child: Text(
                    'Contact Us',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Welcome to ',
                    style: TextStyle(fontSize: 26, color: Color(0xffBC1C23)),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'ASIATO 👋',
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffBC1C23)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Please describe the problem, attach file if needed.',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                    height: 50.0,
                    child: TextField(
                      decoration: new InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(12, 10, 12, 10),
                        hintText: 'Contact mail',
                        hintStyle: TextStyle(
                          color: Color(0xff4F4F4F),
                          fontSize: 14.0,
                        ),
                        filled: true,
                        fillColor: Color(0xFFFBFBFB),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Color(0xFFF3F2F2), width: 0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Color(0xFFF3F3F3), width: 0),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 50.0,
                    child: TextField(
                      decoration: new InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(12, 10, 12, 10),
                        hintText: 'Subject',
                        hintStyle: TextStyle(
                          color: Color(0xff4F4F4F),
                          fontSize: 14.0,
                        ),
                        filled: true,
                        fillColor: Color(0xFFFBFBFB),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Color(0xFFF3F2F2), width: 0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Color(0xFFF3F3F3), width: 0),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 120.0,
                    child: TextField(
                      maxLines: 8,
                      decoration: new InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(12, 10, 12, 10),
                        hintText: 'Message',
                        hintStyle: TextStyle(
                          color: Color(0xff4F4F4F),
                          fontSize: 14.0,
                        ),
                        filled: true,
                        fillColor: Color(0xFFFBFBFB),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Color(0xFFF3F2F2), width: 0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Color(0xFFF3F3F3), width: 0),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 50.0,
                    child: TextField(
                      decoration: new InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(12, 10, 12, 10),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(left: 0.0, right: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 20.0,
                            width: 20,
                            child: Center(
                                child: Image.asset('assets/attachment.png')),
                          ),
                          // Icon(
                          //   Icons.search,
                          //   color: Color(0xFFBC1C23),
                          // ),
                        ),
                        hintText: 'Attach File',
                        hintStyle: TextStyle(
                          color: Color(0xff4F4F4F),
                          fontSize: 14.0,
                        ),
                        filled: true,
                        fillColor: Color(0xFFFBFBFB),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Color(0xFFF3F2F2), width: 0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Color(0xFFF3F3F3), width: 0),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 40.0,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => help_center()),
                      );
                    },
                    child: widgets().buttons("SUBMIT")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
