import 'package:flutter/material.dart';

import 'package:surfpay_mobile/styles/styles.dart';

class ClosePaymentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Räck tillbaka telefonen till kyparen',
              style: AppFont.primaryTextFont.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w900,
              )),
          SizedBox(
            height: 11,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: ButtonBorder.primaryButton,
              color: BoxColors.ternaryBox,
            ),
            child: Text(
              'Stäng »',
              textAlign: TextAlign.center,
              style: AppFont.ternaryHeaderFont,
            ),
          ),
        ],
      ),
    );
  }
}
