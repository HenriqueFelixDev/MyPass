// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servico_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ServicoController on _ServicoControllerBase, Store {
  Computed<int> _$numResultadosComputed;

  @override
  int get numResultados =>
      (_$numResultadosComputed ??= Computed<int>(() => super.numResultados))
          .value;
  Computed<List<Servico>> _$servicosFiltradosComputed;

  @override
  List<Servico> get servicosFiltrados => (_$servicosFiltradosComputed ??=
          Computed<List<Servico>>(() => super.servicosFiltrados))
      .value;

  final _$servicosAtom = Atom(name: '_ServicoControllerBase.servicos');

  @override
  ObservableList<Servico> get servicos {
    _$servicosAtom.context.enforceReadPolicy(_$servicosAtom);
    _$servicosAtom.reportObserved();
    return super.servicos;
  }

  @override
  set servicos(ObservableList<Servico> value) {
    _$servicosAtom.context.conditionallyRunInAction(() {
      super.servicos = value;
      _$servicosAtom.reportChanged();
    }, _$servicosAtom, name: '${_$servicosAtom.name}_set');
  }

  final _$_carregandoAtom = Atom(name: '_ServicoControllerBase._carregando');

  @override
  bool get _carregando {
    _$_carregandoAtom.context.enforceReadPolicy(_$_carregandoAtom);
    _$_carregandoAtom.reportObserved();
    return super._carregando;
  }

  @override
  set _carregando(bool value) {
    _$_carregandoAtom.context.conditionallyRunInAction(() {
      super._carregando = value;
      _$_carregandoAtom.reportChanged();
    }, _$_carregandoAtom, name: '${_$_carregandoAtom.name}_set');
  }

  final _$_temErroAtom = Atom(name: '_ServicoControllerBase._temErro');

  @override
  bool get _temErro {
    _$_temErroAtom.context.enforceReadPolicy(_$_temErroAtom);
    _$_temErroAtom.reportObserved();
    return super._temErro;
  }

  @override
  set _temErro(bool value) {
    _$_temErroAtom.context.conditionallyRunInAction(() {
      super._temErro = value;
      _$_temErroAtom.reportChanged();
    }, _$_temErroAtom, name: '${_$_temErroAtom.name}_set');
  }

  final _$_buscaAtom = Atom(name: '_ServicoControllerBase._busca');

  @override
  String get _busca {
    _$_buscaAtom.context.enforceReadPolicy(_$_buscaAtom);
    _$_buscaAtom.reportObserved();
    return super._busca;
  }

  @override
  set _busca(String value) {
    _$_buscaAtom.context.conditionallyRunInAction(() {
      super._busca = value;
      _$_buscaAtom.reportChanged();
    }, _$_buscaAtom, name: '${_$_buscaAtom.name}_set');
  }

  final _$deletarServicoAsyncAction = AsyncAction('deletarServico');

  @override
  Future deletarServico(int id) {
    return _$deletarServicoAsyncAction.run(() => super.deletarServico(id));
  }

  final _$carregarServicosAsyncAction = AsyncAction('carregarServicos');

  @override
  Future carregarServicos() {
    return _$carregarServicosAsyncAction.run(() => super.carregarServicos());
  }

  final _$_ServicoControllerBaseActionController =
      ActionController(name: '_ServicoControllerBase');

  @override
  dynamic setBusca(String busca) {
    final _$actionInfo = _$_ServicoControllerBaseActionController.startAction();
    try {
      return super.setBusca(busca);
    } finally {
      _$_ServicoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic cadastrarOuAtualizarServico(Servico servico) {
    final _$actionInfo = _$_ServicoControllerBaseActionController.startAction();
    try {
      return super.cadastrarOuAtualizarServico(servico);
    } finally {
      _$_ServicoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'servicos: ${servicos.toString()},numResultados: ${numResultados.toString()},servicosFiltrados: ${servicosFiltrados.toString()}';
    return '{$string}';
  }
}
