import 'package:flutter/material.dart';
import 'package:surfpay_mobile/pages/splash_widget.dart';
import 'payment_screen/payment_screen.dart';

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SplashWidget(),
	    PaymentScreen(),
          ],
        ),
      ),
    );
  }
}
