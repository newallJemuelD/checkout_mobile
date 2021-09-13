import 'dart:async';

import 'package:flutter/material.dart';

class SplashWidget extends StatefulWidget {
  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget>
    with TickerProviderStateMixin {
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleTransitionAnimation;
  late AnimationController _splashAnimationController;

  @override
  void initState() {
    super.initState();

    //initial animation controller
    _splashAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 350),
    );

    //slide animation
    _slideAnimation = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(0, -0.75),
    ).animate(CurvedAnimation(
      curve: Curves.easeInBack,
      parent: _splashAnimationController,
    ));

    //fade animation
    _fadeAnimation = Tween<double>(
      begin: 1,
      end: 0,
    ).animate(_splashAnimationController);

    //scale transition
    _scaleTransitionAnimation = Tween<double>(
      begin: 1,
      end: 0.6,
    ).animate(_splashAnimationController);

    //animation starter code
    Timer(Duration(milliseconds: 1000), () {
      _splashAnimationController.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SlideTransition(
        position: _slideAnimation,
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: ScaleTransition(
            scale: _scaleTransitionAnimation,
            child: Container(
              child: Image.asset(
                'assets/surfpay-splash-icon.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
