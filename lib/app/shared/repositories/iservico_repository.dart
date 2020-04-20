import '../models/servico.dart';

abstract class IServicoRepository {
  Future<int> cadastrar(Servico servico);
  Future<bool> atualizar(Servico servico);
  Future<bool> deletar(int id);
  Future<Servico> buscarPorId(int id);
  Future<List<Servico>> buscarServicos();
}