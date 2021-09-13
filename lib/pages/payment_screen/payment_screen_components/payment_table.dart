import 'package:flutter/material.dart';

import 'package:surfpay_mobile/styles/styles.dart';
import 'package:surfpay_mobile/pages/payment_screen/payment_screen_components/calculation_table.dart';
import 'package:surfpay_mobile/pages/payment_screen/payment_screen_components/items_table.dart';
import 'package:surfpay_mobile/pages/payment_screen/payment_screen_components/total_amount_widget.dart';

class PaymentTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(30),
                child: Image.asset('assets/logo.png'),
              ),
              TotalAmountWidget(),
              SizedBox(height: 25),
              ItemTable(),
              Divider(),
              CalculationTable(),
            ],
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
