import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'package:surfpay_mobile/styles/styles.dart';

class PayButtonWidget extends StatefulWidget {
  final PanelController _controller;
  PayButtonWidget({required PanelController controller})
      : _controller = controller;

  @override
  _PayButtonWidgetState createState() => _PayButtonWidgetState();
}

class _PayButtonWidgetState extends State<PayButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: false,
      child: Container(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: ContainerBorder.primaryContainer,
              ),
              primary: ButtonColor.primaryColor,
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              widget._controller.open();
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 25),
              child: Text(
                'Betala nu »',
		style: AppFont.senaryTextFont,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
