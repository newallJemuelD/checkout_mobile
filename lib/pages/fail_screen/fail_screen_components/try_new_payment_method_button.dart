import 'package:flutter/material.dart';

import 'package:surfpay_mobile/styles/styles.dart';

class TryNewPaymentMethodButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: ButtonBorder.secondaryButton,
        color: Colors.pink[200],
      ),
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Försök med ny betalmetod »',
              style: AppFont.quaternaryTextFont,
            ),
          ],
        ),
      ),
    );
  }
}
