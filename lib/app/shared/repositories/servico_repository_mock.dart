import '../models/servico.dart';
import 'iservico_repository.dart';

class ServicoRepositoryMock extends IServicoRepository {
  static int _ID_INDEX = 0;
  List<Servico> servicos = [
    Servico(++_ID_INDEX, 'Conta da Microsoft', 'microsoft.com', 'MarcosPereira', 'marcospereira45@mail.com', 'abcd1234', null),
    Servico(++_ID_INDEX, 'Conta do Facebook', 'facebook.com', 'MariaClara', 'maria_clara@mail.com', 'abcd1234', null),
    Servico(++_ID_INDEX, 'Conta da Unity', 'unity.com', 'AnaSilva', 'anasilva98@mail.com', 'abcd1234', null),
    Servico(++_ID_INDEX, 'Conta do Gmail1', 'gmail.com', 'JoaoCarlos', 'joaocarlos25@mail.com', 'abcd1234', null),
    Servico(++_ID_INDEX, 'Conta do Gmail2', 'gmail.com', 'JoaoCarlos', 'joaocarlospereira@mail.com', 'abcd1234', null),
    Servico(++_ID_INDEX, 'Conta do Instagram', 'instagram.com', 'MarcosPereira', 'marcospereira45@mail.com', 'abcd1234', null),
    Servico(++_ID_INDEX, 'Conta do Twitter', 'twitter.com', 'MariaClara', 'maria_clara@mail.com', 'abcd1234', null),
    Servico(++_ID_INDEX, 'Conta do TikTok', 'tiktok.com', 'AnaSilva', 'anasilva98@mail.com', 'abcd1234', null),
    Servico(++_ID_INDEX, 'Conta da Rockstar', 'rockstar.com', 'JoaoCarlos', 'joaocarlos25@mail.com', 'abcd1234', null),
    Servico(++_ID_INDEX, 'Conta da EpicGames', 'epicgames.com', 'PedroLourenco', 'pedro_lourenco2@mail.com', 'abcd1234', null)
  ];

  @override
  Future<bool> atualizar(Servico servico) {
    int servicoIndex = servicos.indexWhere((s) => s.id == servico.id);
    if(servicoIndex >= 0) {
      servicos[servicoIndex] = servico;
      return Future.value(true);
    }
    return Future.value(false);
  }

  @override
  Future<Servico> buscarPorId(int id) {
    return Future.value(servicos.singleWhere((servico) => servico.id == id));
  }

  @override
  Future<List<Servico>> buscarServicos() {
    return Future.value(servicos);
  }

  @override
  Future<int> cadastrar(Servico servico) {
    servico.id = ++_ID_INDEX;
    servicos.add(servico);
    return Future.value(servico.id);
  }

  @override
  Future<bool> deletar(int id) {
    servicos.removeWhere((servico) => servico.id == id);
    return Future.value(true);
  }
  
}