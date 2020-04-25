import '../models/servico.dart';
import 'iservico_repository.dart';

class ServicoRepositoryMock extends IServicoRepository {
  static int _ID_INDEX = 0;
  List<Servico> servicos = [
    Servico(id: ++_ID_INDEX, identificador: 'Conta da Microsoft', servico: 'microsoft.com', usuario: 'MarcosPereira', email: 'marcospereira45@mail.com', senha: 'abcd1234', informacoes: null),
    Servico(id: ++_ID_INDEX, identificador:'Conta do Facebook', servico: 'facebook.com', usuario: 'MariaClara', email: 'maria_clara@mail.com', senha: 'abcd1234', informacoes: null),
    Servico(id: ++_ID_INDEX, identificador:'Conta da Unity', servico: 'unity.com', usuario: 'AnaSilva', email: 'anasilva98@mail.com', senha: 'abcd1234', informacoes: null),
    Servico(id: ++_ID_INDEX, identificador:'Conta do Gmail1', servico: 'gmail.com', usuario: 'JoaoCarlos', email: 'joaocarlos25@mail.com', senha: 'abcd1234', informacoes: null),
    Servico(id: ++_ID_INDEX, identificador:'Conta do Gmail2', servico: 'gmail.com', usuario: 'JoaoCarlos', email: 'joaocarlospereira@mail.com', senha: 'abcd1234', informacoes: null),
    Servico(id: ++_ID_INDEX, identificador:'Conta do Instagram', servico: 'instagram.com', usuario: 'MarcosPereira', email: 'marcospereira45@mail.com', senha: 'abcd1234', informacoes: null),
    Servico(id: ++_ID_INDEX, identificador:'Conta do Twitter', servico: 'twitter.com', usuario: 'MariaClara', email: 'maria_clara@mail.com', senha: 'abcd1234', informacoes: null),
    Servico(id: ++_ID_INDEX, identificador:'Conta do TikTok', servico: 'tiktok.com', usuario: 'AnaSilva', email: 'anasilva98@mail.com', senha: 'abcd1234', informacoes: null),
    Servico(id: ++_ID_INDEX, identificador:'Conta da Rockstar', servico: 'rockstar.com', usuario: 'JoaoCarlos', email: 'joaocarlos25@mail.com', senha: 'abcd1234', informacoes: null),
    Servico(id: ++_ID_INDEX, identificador:'Conta da EpicGames', servico: 'epicgames.com', usuario: 'PedroLourenco', email: 'pedro_lourenco2@mail.com', senha: 'abcd1234', informacoes: null)
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