class Servico {
  int id;
  String identificador;
  String servico;
  String usuario;
  String email;
  String senha;
  String informacoes;

  Servico({this.id, this.identificador, this.servico, this.usuario, this.email, this.senha, this.informacoes});
  Servico.fromJson(Map<String, dynamic> map) {
    this.id = map['id'];
    this.identificador = map['identificador'];
    this.servico = map['servico'];
    this.usuario = map['usuario'];
    this.email = map['email'];
    this.senha = map['senha'];
    this.informacoes = map['informacoes'];
  }

  Map<String, dynamic> toJson() {
    Map m = {
      'identificador' : this.identificador,
      'servico' : this.servico,
      'usuario' : this.usuario,
      'email' : this.email,
      'senha' : this.senha,
      'informacoes' : this.informacoes
    };

    if(this.id != null) {
      m['id'] = this.id;
    }
      
    return Map.from(m);
  }
}