import 'package:asiato_driver/widgets/widgets.dart';
import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 70,
                color: Color(0xffBC1C23),
                child: Row(
                  children: [
                    Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Image.asset('assets/smile.png')),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Hi there!',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          'View personal information',
                          style: TextStyle(color: Colors.white, fontSize: 8),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Divider(
                color: Color(0xffC9C9C9),
              ),
              GestureDetector(
                  onTap: () {},
                  child: coupon().drawerwidget(
                      "assets/account.png", 'Driver Account', context, null)),
              Divider(
                color: Color(0xffC9C9C9),
              ),
              SizedBox(
                height: 3,
              ),
              Divider(
                color: Color(0xffC9C9C9),
              ),
              coupon().drawerwidget(
                "assets/order_history.png",
                'Order History',
                context,
                () {},
              ),
              Divider(
                color: Color(0xffC9C9C9),
              ),
              coupon().drawerwidget(
                  "assets/wallet.png", 'My Wallet', context, null),
              Divider(
                color: Color(0xffC9C9C9),
              ),
              SizedBox(
                height: 3,
              ),
              Divider(
                color: Color(0xffC9C9C9),
              ),
              coupon()
                  .drawerwidget("assets/call.png", 'Contact Us', context, null),
              Divider(
                color: Color(0xffC9C9C9),
              ),
              coupon().drawerwidget(
                  "assets/help.png", 'Help Center ', context, null),
              Divider(
                color: Color(0xffC9C9C9),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
