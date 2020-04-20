import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mypass/app/modules/servicos/servico_module.dart';

import 'app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
    Router('/servico', module: ServicoModule())
  ];

  @override
  Widget get bootstrap => AppWidget();
}