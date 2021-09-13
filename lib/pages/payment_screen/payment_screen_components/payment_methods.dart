import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

import 'package:surfpay_mobile/styles/styles.dart';
import 'package:surfpay_mobile/pages/payment_screen_card/payment_screen_card.dart';
import 'package:surfpay_mobile/pages/payment_screen_swish/payment_screen_swish.dart';
import 'package:surfpay_mobile/common_widgets/payments_common_widget.dart';
import 'package:surfpay_mobile/common_widgets/yet_to_be_implemented.dart';

class PaymentMethods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 16, bottom: 10),
          child: Text(
            'Betala direkt',
            style: AppFont.ternaryTextFont,
          ),
        ),
        PaymentsCommonWidget(
          paymentImage: 'assets/card-pay-icon.png',
          paymentMethodName: 'Betala med kort',
          paymentDescription: Image.asset('assets/accepted-payment.png'),
          navigateTo: PaymentScreenCard(),
        ),
        PaymentsCommonWidget(
          paymentImage: 'assets/swish-pay-icon.png',
          paymentMethodName: 'Swish',
          paymentDescription: Text(
            'Betala direkt från appen',
            style: AppFont.secondaryTextFont,
          ),
          navigateTo: PaymentScreenSwish(),
        ),
        Container(
          margin: EdgeInsets.only(top: 24, left: 16, bottom: 10),
          child: Text(
            'Köp nu, betala senare',
            style: AppFont.ternaryTextFont,
          ),
        ),
        PaymentsCommonWidget(
          paymentImage: 'assets/klarna-icon.png',
          paymentMethodName: 'Klarna',
          paymentDescription: Text(
            'Betala inom 14 dagar',
            style: AppFont.secondaryTextFont,
          ),
	  navigateTo: YetToBeImplementedMessagePage(),
        ),
        PaymentsCommonWidget(
          paymentImage: 'assets/svea-icon.png',
          paymentMethodName: 'Svea Ekonomi',
          paymentDescription: Text(
            'Betala inom 30 dagarn',
            style: AppFont.secondaryTextFont,
          ),
	  navigateTo: YetToBeImplementedMessagePage(),
        ),
      ],
    );
  }
}


