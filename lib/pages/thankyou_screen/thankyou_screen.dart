import 'package:flutter/material.dart';

import 'package:surfpay_mobile/styles/styles.dart';
import 'thankyou_screen_components/close_payment_widget.dart';
import 'thankyou_screen_components/payment_completed_and_receipt_message.dart';
import 'thankyou_screen_components/receipt_through_mobile_number_widget.dart';

class ThankyouPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _heightOftheScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Image.asset('assets/logo.png'),
              SizedBox(height: 30),
              Image.asset(
                'assets/surfpay-success.png',
                fit: BoxFit.cover,
                height: _heightOftheScreen * .1,
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: PaymentCompletedAndReceiptMessage(),
              ),
              Container(
                margin: EdgeInsets.only(top: 16, bottom: 24),
                child: Image.asset(
                  'assets/qrcode.png',
                  height: 211,
                  width: 216,
                  fit: BoxFit.cover,
                ),
              ),
              Opacity(
                opacity: 0.5,
                child: Text(
                  'SKICKA DIGITAL KVITTO SOM SMS',
                  style: AppFont.secondaryTextFont.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ReceiptThroughMobileNumberWidget(),
              ),
              SizedBox(
                height: 43,
              ),
              ClosePaymentWidget(),
              SizedBox(height: 24)
            ],
          ),
        ),
      ),
    );
  }
}
