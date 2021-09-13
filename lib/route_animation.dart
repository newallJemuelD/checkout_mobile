import 'package:flutter/material.dart';

class FadePageRoute extends PageRouteBuilder {
  final Widget widget;

  FadePageRoute({required this.widget})
      : super(
          transitionDuration: Duration(milliseconds: 450),
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secAnimation,
            Widget child,
          ) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secAnimation,
          ) {
            return widget;
          },
        );
}
