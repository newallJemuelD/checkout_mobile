import 'package:flutter/material.dart';

import 'package:fluttericon/font_awesome_icons.dart';
import 'package:surfpay_mobile/styles/styles.dart';

class ReceiptThroughMobileNumberWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: BoxColors.primaryBox,
        border: Border.all(
          color: BoxColors.secondaryBox,
          width: 2,
        ),
        borderRadius: ContainerBorder.primaryContainer,
      ),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(0.5),
                margin: EdgeInsets.symmetric(horizontal: 14),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 14, 68, 225),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Transform.rotate(
                  angle: 4.5,
                  child: Icon(
                    FontAwesome.phone,
                    size: 14,
                    color: Color.fromARGB(255, 14, 68, 225),
                  ),
                ),
              ),
              Text(
                'Phone number',
                style: AppFont.ternaryTextFont
                    .copyWith(fontWeight: FontWeight.w500),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 28, vertical: 14),
            decoration: BoxDecoration(
              color: ButtonColor.ternaryColor,
              borderRadius: ButtonBorder.ternaryButton,
            ),
            child: Text(
              'Send »',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
