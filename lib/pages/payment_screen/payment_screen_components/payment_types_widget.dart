import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'package:surfpay_mobile/styles/styles.dart';
import 'package:surfpay_mobile/pages/payment_screen/payment_screen_components/payment_methods.dart';

class PaymentTypesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: ListView(
        shrinkWrap: true,
        children: [
          Container(
            margin: EdgeInsets.only(top: 16, bottom: 16),
            alignment: Alignment.center,
            child: Opacity(
              opacity: 0.5,
              child: Text(
                'VÄLJ BETALAMETOD',
                style: AppFont.ternaryHeaderFont,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: PaymentMethods(),
          ),
        ],
      ),
    );
  }
}
