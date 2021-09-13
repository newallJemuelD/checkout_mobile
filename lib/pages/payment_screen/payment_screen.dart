import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'package:surfpay_mobile/styles/styles.dart';
import 'payment_screen_components/calculation_table.dart';
import 'payment_screen_components/items_table.dart';
import 'payment_screen_components/pay_button_widget.dart';
import 'payment_screen_components/total_amount_widget.dart';
import 'payment_screen_components/payment_table.dart';
import 'package:surfpay_mobile/pages/payment_screen/payment_screen_components/payment_types_widget.dart';
import 'package:surfpay_mobile/pages/payment_screen/payment_screen_components/minimise_button.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen>
    with TickerProviderStateMixin {
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;
  late AnimationController _animationController;
  late AnimationController _bottomSheetAnimationController;
  late PanelController bottomPanelController = PanelController();

  @override
  void initState() {
    if (bottomPanelController.isAttached) {
      bottomPanelController.animatePanelToPosition(1.0);
    }
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    //fade animation
    _fadeAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_animationController);

    //slide transition animation
    _slideAnimation = Tween<Offset>(
      begin: Offset(0, 0.05),
      end: Offset(0, 0),
    ).animate(CurvedAnimation(
      curve: Curves.easeInBack,
      parent: _animationController,
    ));

    //bottom sheet animation
    _bottomSheetAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 450),
    );

    Timer(Duration(milliseconds: 1100), () {
      _animationController.forward();
      bottomPanelController.open();
    });
  }

  bool value = false;

  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );
    return FadeTransition(
      opacity: _fadeAnimation,
      child: Scaffold(
        backgroundColor: BackgroundColor.primaryColor,
        body: SlidingUpPanel(
          isDraggable: false,
          color: Colors.transparent,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.transparent,
            ),
          ],
          controller: bottomPanelController,
          minHeight: 126,
          maxHeight: MediaQuery.of(context).size.height / 1.3,
          panel: Column(
            children: [
              IgnorePointer(
                ignoring: value,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      value = !value;
                    });
                    bottomPanelController.close();
                  },
                  child: MinimiseButton(),
                ),
              ),
              Expanded(
                child: PaymentTypesWidget(),
              ),
            ],
          ),
          collapsed: IgnorePointer(
            ignoring: !value,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(32),
                  topLeft: Radius.circular(32),
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    value = !value;
                  });
                  bottomPanelController.open();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: ContainerBorder.primaryContainer,
                  ),
                  primary: ButtonColor.primaryColor,
                ),
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
          body: SlideTransition(
            position: _slideAnimation,
            child: PaymentTable(),
          ),
          borderRadius: radius,
        ),
      ),
    );
  }
}
