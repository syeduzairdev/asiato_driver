import 'package:flutter/material.dart';

class widgets {
  Widget driverProfile(name, name2) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 12),
          ),
          Text(
            name2,
            style: TextStyle(color: Colors.black, fontSize: 12),
          )
        ],
      ),
    );
  }

  Widget buttons(txt) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xffBC1C23),
      ),
      child: Center(
          child: Text(
        txt,
        style: TextStyle(color: Colors.white, fontSize: 16),
      )),
    );
  }

  Widget help_center(BuildContext context, txt) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.85,
      height: 55.0,
      decoration: new BoxDecoration(
        color: Color.fromRGBO(242, 242, 242, 1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Color.fromRGBO(242, 242, 242, 1),
        ),
      ),
      child: InkWell(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                txt,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 30.0,
              ),
              Icon(
                Icons.expand_more_outlined,
              ),
            ],
          )),
    );
  }

  Widget withdraw(ast, txt1, txt2, txt3) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration:
                  BoxDecoration(image: DecorationImage(image: AssetImage(ast))),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Text(
                  txt1,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text(
                  txt2,
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            )
          ],
        ),
        Text(
          txt3,
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ],
    );
  }
}

class coupon {
  Widget coupon1(BuildContext context, ontap) {
    return Column(
      children: [
        Center(
          child: Container(
              height: 147,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0XFFBC1C23),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 46.0,
                        width: 46.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/coupon.png'))),
                      ),
                      Text(
                        'Gift Coupon valued at \$50 or 10% \noff at  Asia To Me',
                        style: TextStyle(
                            fontSize: 13.0, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Divider(
                      thickness: 2.0,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Expires',
                              style: TextStyle(
                                  fontSize: 13.0, color: Color(0xffA49A9A)),
                            ),
                            Text(
                              '04 jan 2022',
                              style: TextStyle(
                                  fontSize: 13.0, color: Colors.black),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: ontap,
                          child: Container(
                            height: 32,
                            width: 97,
                            decoration: BoxDecoration(
                                color: Color(0xffA44145),
                                borderRadius: BorderRadius.circular(40.0)),
                            child: Center(
                              child: Text(
                                'I Agree',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        )
      ],
    );
  }

  Widget drawerwidget(icn, name, BuildContext context, ontap) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: new BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 20,
              width: 20,
              decoration:
                  BoxDecoration(image: DecorationImage(image: AssetImage(icn))),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              name,
              style: TextStyle(fontFamily: 'Roboto', color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
