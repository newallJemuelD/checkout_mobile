import 'package:flutter/material.dart';

import 'package:surfpay_mobile/styles/styles.dart';

class AmountBeforePayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
        borderRadius: ContainerBorder.primaryContainer,
        color: BackgroundColor.ternaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Att betala',
            style: AppFont.primaryTextFont,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '1,891 ',
                  style: AppFont.secondaryHeaderFont
                      .copyWith(color: HeaderTextColor.secondaryColor),
                ),
                TextSpan(
                  text: 'kr',
                  style: AppFont.secondaryTextFont.copyWith(fontSize: 24),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
