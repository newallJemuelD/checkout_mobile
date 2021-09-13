import 'package:flutter/material.dart';

import 'payment_screen_swish_components/amount_before_payment.dart';
import 'payment_screen_swish_components/cancel_payment_widget.dart';
import 'payment_screen_swish_components/payment_message_widget.dart';
import 'payment_screen_swish_components/swish_payment_animation_widget.dart';

class PaymentScreenSwish extends StatefulWidget {
  @override
  _PaymentScreenSwishState createState() => _PaymentScreenSwishState();
}

class _PaymentScreenSwishState extends State<PaymentScreenSwish>
    with SingleTickerProviderStateMixin {
  late AnimationController _paymentPageAnimationController;
  late Animation<Offset> _topToBottomAnimation;
  late Animation<Offset> _bottomToTopAnimation;
  late Animation<double> _paymentScaleAnimation;

  @override
  void initState() {
    super.initState();

    //this page's animation controller
    _paymentPageAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 450),
    );

    //top to bottom animation
    _topToBottomAnimation = Tween<Offset>(
      begin: Offset(0, -0.3),
      end: Offset(0, 0),
    ).animate(_paymentPageAnimationController);

    //bottom to top animation
    _bottomToTopAnimation = Tween<Offset>(
      begin: Offset(0, 0.3),
      end: Offset(0, 0),
    ).animate(_paymentPageAnimationController);

    //scale animation
    _paymentScaleAnimation = Tween<double>(
      begin: 1.2,
      end: 1,
    ).animate(_paymentPageAnimationController);

    _paymentPageAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(30),
                child: Image.asset('assets/logo.png'),
              ),
              SlideTransition(
                position: _topToBottomAnimation,
                child: AmountBeforePayment(),
              ),
              SlideTransition(
                position: _bottomToTopAnimation,
                child: PaymentMessageWidget(),
              ),
              SizedBox(height: 33),
              ScaleTransition(
                scale: _paymentScaleAnimation,
                child: SwishPaymentAnimationWidget(),
              ),
              SizedBox(height: 142),
              SlideTransition(
                position: _bottomToTopAnimation,
                child: CancelPaymentWidget(),
              ),
	      SizedBox(height: 30)
            ],
          ),
        ),
      ),
    );
  }
}
