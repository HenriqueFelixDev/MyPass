import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SlidePageTransition extends CustomTransition {
  SlidePageTransition() : super(transitionDuration: Duration(milliseconds: 300),
      transitionBuilder: (context, primaryAnimation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(begin: Offset(-1.0, 0.0), end: Offset.zero).animate(primaryAnimation),
          child: SlideTransition(
            position: Tween<Offset>(begin: Offset.zero, end: Offset(-1.0, 0.0)).animate(secondaryAnimation),
            child: child
          )
        );
      });
}