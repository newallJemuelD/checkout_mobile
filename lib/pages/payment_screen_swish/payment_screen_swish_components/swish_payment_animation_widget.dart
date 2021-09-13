import 'package:flutter/material.dart';

import 'package:surfpay_mobile/pages/loading_page.dart';
import 'package:surfpay_mobile/route_animation.dart';

class SwishPaymentAnimationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          FadePageRoute(widget: LoadingPage()),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 53),
        child: Image.asset(
          'assets/swish_qr.png',
        ),
      ),
    );
  }
}
