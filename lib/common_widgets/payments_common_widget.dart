import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

import 'package:surfpay_mobile/styles/styles.dart';
import 'package:surfpay_mobile/pages/payment_screen_card/payment_screen_card.dart';
import 'package:surfpay_mobile/pages/payment_screen_swish/payment_screen_swish.dart';
import 'package:surfpay_mobile/route_animation.dart';

class PaymentsCommonWidget extends StatelessWidget {
  final String? paymentImage;
  final String? paymentMethodName;
  final Widget? paymentDescription;
  final Widget? navigateTo;
  PaymentsCommonWidget(
      {this.paymentImage,
      this.paymentMethodName,
      this.paymentDescription,
      this.navigateTo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          FadePageRoute(widget: navigateTo!),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.all(Radius.circular(28)),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 12),
              child: Image(
                image: AssetImage(paymentImage!),
                height: 56,
                width: 56,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    paymentMethodName!,
                    style: AppFont.secondaryHeaderFont,
                  ),
                  paymentDescription!,
                ],
              ),
            ),
            Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                color: BackgroundColor.ternaryColor2,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: Icon(
                FontAwesome5.chevron_right,
                size: 10,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
