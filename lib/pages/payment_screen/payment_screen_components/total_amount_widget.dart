import 'package:flutter/material.dart';

import 'package:surfpay_mobile/styles/styles.dart';

class TotalAmountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'ATT BETALA',
            style: AppFont.quinaryTextFont,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '1,891 ',
                  style: AppFont.primaryHeaderFont,
                ),
                TextSpan(
                  text: 'kr',
                  style: AppFont.quinaryTextFont2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
