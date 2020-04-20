import 'package:flutter_modular/flutter_modular.dart';

import 'dados_servico/dados_servico.dart';
import 'edicao_servico/edicao_servico_screen.dart';
import 'consulta_servicos/consulta_servicos_screen.dart';

class ServicoModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => ConsultaServicosScreen()),
    Router('/salvar', child: (_, args) => EdicaoServicoScreen()),
    Router('/visualizar', child: (_, args) => DadosServico())
  ];
}