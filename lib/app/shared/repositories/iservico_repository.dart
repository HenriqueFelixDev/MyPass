import 'package:mypass/app/shared/models/servico.dart';

abstract class IServicoRepository {
  cadastrar(Servico servico);
  atualizar(Servico servico);
  deletar(int id);
  buscarPorId(int id);
  buscarServicos();
}