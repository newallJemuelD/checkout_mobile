import 'package:flutter/material.dart';

import 'package:surfpay_mobile/styles/styles.dart';

class ErrorMessageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: ContainerBorder.primaryContainer,
      ),
      child: Column(
        children: [
          Image.asset('assets/error-icon.png'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Betalningen misslyckades',
              style: AppFont.ternaryHeaderFont,
            ),
          ),
          Container(
            child: Column(
              children: [
                Text('Det fanns inte tillräckligt mycket'),
                Text(' pengar på kontot'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
