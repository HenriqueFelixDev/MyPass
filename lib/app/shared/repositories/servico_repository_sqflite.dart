import 'package:mypass/app/shared/models/servico.dart';
import 'package:mypass/app/shared/repositories/iservico_repository.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class ServicoRepositorySQFlite implements IServicoRepository {

  Database _bd;
  _conectarBD() async{
    String databasesPath = await getDatabasesPath();
    String path = join(databasesPath + '/data.mps');
    _bd = await openDatabase(path, version: 1, onCreate: (bd, versao) {
      bd.execute('CREATE TABLE Servico (id INTEGER PRIMARY KEY AUTOINCREMENT, ' +
          'identificador TEXT NOT NULL, ' +
          'servico TEXT NOT NULL, ' +
          'usuario TEXT NOT NULL, ' +
          'email TEXT NOT NULL, ' +
          'senha TEXT NOT NULL, ' +
          'informacoes TEXT)');
    });
  }

  _fecharBD() async{
    await _bd.close();
  }

  @override
  Future<bool> atualizar(Servico servico) async{
    try {
      await _conectarBD();
      int res = await _bd.update('Servico', servico.toJson(), where: 'id = ?', whereArgs: [servico.id]);
      await _fecharBD();
      return res == 1 ? true : false;
    } catch(e) {
      print(e);
    }
    return false;
  }

  @override
  Future<Servico> buscarPorId(int id) async{
    try {
      await _conectarBD();
      List<Map> resultados = await _bd.query('Servico', where: 'id = ?', whereArgs: [id]);
      await _fecharBD();
      if(resultados != null) {
        Map resultado = resultados[0];
        return Servico.fromJson(resultado);
      }
      return null;
    } catch(e) {
      print(e);
    }
    return null;
  }

  @override
  Future<List<Servico>> buscarServicos() async{
    try {
      await _conectarBD();
      List<Map> resultados = await _bd.query('Servico');
      await _fecharBD();

      List<Servico> servicos = [];
      for(Map m in resultados) {
        servicos.add(Servico.fromJson(m));
      }
      return servicos;
    } catch(e) {
      print(e);
    }
    return null;
  }

  @override
  Future<int> cadastrar(Servico servico) async{
    try {
      await _conectarBD();
      int id = await _bd.insert('Servico', servico.toJson());
      await _fecharBD();
      return id;
    } catch(e) {
      print(e);
    }
    return -1;
  }

  @override
  Future<bool> deletar(int id) async{
    try {
      await _conectarBD();
      int res = await _bd.delete('Servico',where: 'id = ?', whereArgs: [id]);
      await _fecharBD();
      return res == 1 ? true : false;
    } catch(e) {
      print(e);
    }
    return false;
  }

}