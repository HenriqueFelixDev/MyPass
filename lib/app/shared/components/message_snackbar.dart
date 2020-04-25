import 'package:flutter/material.dart';

enum MessageSnackBarType {SUCCESS, ERROR}

class MessageSnackBar extends SnackBar {
  final BuildContext context;
  final String text;

  MessageSnackBar(this.context, {@required this.text, @required MessageSnackBarType type}) : super(
    backgroundColor: type == MessageSnackBarType.SUCCESS ? Colors.green : Colors.red, 
    content: Text(text, style: TextStyle(color: Colors.white)),
    action: SnackBarAction(
      label: 'OK',
      textColor: Colors.white,
      onPressed: () => Scaffold.of(context).hideCurrentSnackBar(reason: SnackBarClosedReason.dismiss)
    ));
}