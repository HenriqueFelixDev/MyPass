import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mypass/app/shared/theme/styles.dart';

import 'shared/utils/constants.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_NAME,
      debugShowCheckedModeBanner: false,
      theme: themeLight,
      navigatorKey: Modular.navigatorKey,
      initialRoute: '/servico',
      onGenerateRoute: Modular.generateRoute
    );
  }
}