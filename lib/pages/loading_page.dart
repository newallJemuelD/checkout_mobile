import 'package:flutter/material.dart';

import 'package:surfpay_mobile/route_animation.dart';
import 'package:surfpay_mobile/pages/thankyou_screen/thankyou_screen.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              FadePageRoute(widget: ThankyouPage()),
            );
          },
          child: Container(
            child: Image.asset(
              'assets/surfpay-splash-icon.png',
            ),
          ),
        ),
      ),
    );
  }
}
