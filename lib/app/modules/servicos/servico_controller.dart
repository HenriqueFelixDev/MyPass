import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:mypass/app/shared/models/servico.dart';
import 'package:mypass/app/shared/repositories/iservico_repository.dart';
part 'servico_controller.g.dart';

class ServicoController = _ServicoControllerBase with _$ServicoController;

abstract class _ServicoControllerBase with Store{
  IServicoRepository servicoRepository = Modular.get();

  _ServicoControllerBase() {
    carregarServicos();
  }

  @observable
  ObservableList<Servico> servicos = <Servico>[].asObservable();

  @observable
  bool _carregando = false;
  bool get carregando => _carregando;

  @observable
  bool _temErro = false;
  bool get temErro => _temErro;

  @observable
  String _busca = '';

  @action
  setBusca(String busca) => _busca = busca; 

  @computed
  int get numResultados => servicosFiltrados.length;

  @computed
  List<Servico> get servicosFiltrados {
    if(_busca.trim().isEmpty) {
      return servicos;
    }
    List<String> tokens = _busca.trim().split(' ');
    return servicos.where((servico) {
      for(String token in tokens) {
        if(!servico.identificador.contains(token) && 
            !servico.servico.contains(token) &&
            !servico.usuario.contains(token) &&
            !servico.email.contains(token)) {
          return false;
        }
      }
      return true;
    }).toList();
  }

  @action
  cadastrarOuAtualizarServico(Servico servico) {
    if(servico.id == null) {
      _cadastrarServico(servico);
    } else {
      _atualizarServico(servico);
    }
  }

  _cadastrarServico(Servico servico) async{
    int id = await servicoRepository.cadastrar(servico);
    if(id > 0) {
      servico.id = id;
      servicos.add(servico);
      return;
    }
    throw new Exception('Falha ao cadastrar o serviço');
  }

  _atualizarServico(Servico servico) async{
    bool result = await servicoRepository.atualizar(servico);
    if(result) {
      int index = servicos.indexWhere((s) => s.id == servico.id);
      servicos[index] = servico;
      return;
    }
    throw new Exception('Falha ao atualizar o serviço');
  }

  @action
  deletarServico(int id) async{
    bool result = await servicoRepository.deletar(id);
    if(result) {
      servicos.removeWhere((servico) => servico.id == id);
      return;
    }
    throw new Exception('Falha ao deletar o serviço');
  }

  @action
  carregarServicos() async{
    _carregando = true;
    List<Servico> lista = await servicoRepository.buscarServicos();
    if(lista == null) {
      lista = [];
      _temErro = true;
    }
    servicos = lista.asObservable();
    _carregando = false;
  }
}