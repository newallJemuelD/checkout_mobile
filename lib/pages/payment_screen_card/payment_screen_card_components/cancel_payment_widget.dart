import 'package:flutter/material.dart';

import 'package:surfpay_mobile/styles/styles.dart';

class CancelPaymentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Text(
        'Avbryt kop',
        style: TextStyle(
          decoration: TextDecoration.underline,
          fontSize: 14,
          fontWeight: FontWeight.w900,
          color: TextColor.quinaryColor,
        ),
      ),
    );
  }
}
