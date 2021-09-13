import 'package:flutter/material.dart';

import 'package:surfpay_mobile/pages/loading_page.dart';
import 'package:surfpay_mobile/route_animation.dart';

class CardPaymentAnimationWidget extends StatelessWidget {
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
        child: Image.asset(
          'assets/card-payment.png',
        ),
      ),
    );
  }
}
