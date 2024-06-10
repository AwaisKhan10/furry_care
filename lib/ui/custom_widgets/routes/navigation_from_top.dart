// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NavigationFromTopRoute extends PageRouteBuilder {
  final Widget page;

  NavigationFromTopRoute({required this.page})
      : super(
          transitionDuration: Duration(milliseconds: 300),
          pageBuilder: (context, animation, secondaryAnimation) => page,
        );

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset(0, -1),
        end: Offset.zero,
      ).animate(animation),
      child: child,
    );
  }
}
