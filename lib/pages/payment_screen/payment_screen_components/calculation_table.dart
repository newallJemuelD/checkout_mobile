import 'package:flutter/material.dart';

import 'package:surfpay_mobile/styles/styles.dart';

class CalculationTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _calculationTableRow(),
        _calculationTableRow(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          padding: EdgeInsets.only(bottom: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: AppFont.secondaryTextFont.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 4),
                    child: Text(
                      '1891.00',
                      style: AppFont.secondaryTextFont.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    child: Text(
                      'kr',
                      style: AppFont.quinaryTextFont.copyWith(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Container _calculationTableRow() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 25),
    padding: EdgeInsets.only(bottom: 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Test',
          style: AppFont.primaryTextFont,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '180 ',
                style: AppFont.primaryTextFont,
              ),
              TextSpan(
                text: 'kr',
                style: AppFont.quinaryTextFont.copyWith(fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
