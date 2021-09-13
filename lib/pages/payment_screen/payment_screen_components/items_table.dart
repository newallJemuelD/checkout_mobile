import 'package:flutter/material.dart';

import 'package:surfpay_mobile/styles/styles.dart';

class ItemTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _itemsTableRowBuilder(),
        _itemsTableRowBuilder(),
        _itemsTableRowBuilder(),
        _itemsTableRowBuilder(),
        _itemsTableRowBuilder(),
        _itemsTableRowBuilder(),
        _itemsTableRowBuilder()
      ],
    );
  }
}

Container _itemsTableRowBuilder() {
  return Container(
    padding: EdgeInsets.fromLTRB(25, 0, 25, 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            'Test',
            style: AppFont.primaryTextFont,
          ),
        ),
        Row(
          children: [
            Container(
              child: Text(
                'x',
                style: AppFont.quinaryTextFont.copyWith(fontSize: 12),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 42),
              child: Text(
                '2',
                style: AppFont.primaryTextFont,
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '180 ',
                    style: AppFont.ternaryTextFont,
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
      ],
    ),
  );
}
