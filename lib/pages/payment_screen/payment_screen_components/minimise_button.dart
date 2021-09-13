import 'package:flutter/material.dart';

import 'package:surfpay_mobile/styles/styles.dart';

class MinimiseButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 40,
      width: 145,
      decoration: BoxDecoration(
        color: BackgroundColor.quaternaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'Expandera kvitto',
          style: AppFont.senaryTextFont,
        ),
      ),
    );
  }
}
