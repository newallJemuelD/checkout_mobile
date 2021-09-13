import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:surfpay_mobile/styles/styles.dart';
import 'fail_screen_components/error_message_widget.dart';
import 'fail_screen_components/try_new_payment_method_button.dart';

class FailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.secondaryColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(bottom: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(30),
                child: SvgPicture.asset('assets/logo.png'),
              ),
              ErrorMessageWidget(),
              TryNewPaymentMethodButton(),
            ],
          ),
        ),
      ),
    );
  }
}
