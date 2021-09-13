import 'package:flutter/material.dart';

import 'payment_screen_card_components/amount_before_payment.dart';
import 'payment_screen_card_components/cancel_payment_widget.dart';
import 'payment_screen_card_components/card_payment_animation_widget.dart';
import 'payment_screen_card_components/payment_message_widget.dart';

class PaymentScreenCard extends StatefulWidget {
  @override
  _PaymentScreenCardState createState() => _PaymentScreenCardState();
}

class _PaymentScreenCardState extends State<PaymentScreenCard>
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
      begin: 0.8,
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
              SizedBox(height: 30),
              Image.asset('assets/logo.png'),
              SizedBox(height: 40),
              SlideTransition(
                position: _topToBottomAnimation,
                child: AmountBeforePayment(),
              ),
              SlideTransition(
                position: _bottomToTopAnimation,
                child: PaymentMessageWidget(),
              ),
	     // SizedBox(height: 33),
              ScaleTransition(
                scale: _paymentScaleAnimation,
                child: CardPaymentAnimationWidget(),
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
