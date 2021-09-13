import 'package:flutter/material.dart';

import 'package:surfpay_mobile/styles/styles.dart';

class PaymentMessageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Text(
            'Redo att betala',
            style: AppFont.secondaryHeaderFont,
          ),
          Container(
            padding: EdgeInsets.only(top: 5),
            margin: EdgeInsets.symmetric(horizontal: 28),
            child: Text(
              'Dutta kortet pa baksidan av telefonen eller mot kortlasaren',
              style: AppFont.secondaryTextFont,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
