import 'package:flutter/material.dart';

import 'package:surfpay_mobile/styles/styles.dart';

class PaymentCompletedAndReceiptMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Betalningen genomförd', style: AppFont.secondaryHeaderFont),
          SizedBox(height: 8),
          Text(
            'Scanna QR-koden med mobilkameran för att komma åt ditt digitala kvitto, eller fyll i mobilnumret i fältet så får du en länk istället',
            style: AppFont.primaryTextFont,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
