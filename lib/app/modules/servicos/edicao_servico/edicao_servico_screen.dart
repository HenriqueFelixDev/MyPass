import 'package:flutter/material.dart';

import 'package:mypass/app/shared/utils/constants.dart';

class EdicaoServicoScreen extends StatelessWidget {

  Widget _identificadorTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Identificador',
        border: OutlineInputBorder()
      ),
    );
  }

  Widget _servicoTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Serviço/Site',
        border: OutlineInputBorder()
      ),
    );
  }

  Widget _usuarioTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Usuário',
        border: OutlineInputBorder()
      ),
    );
  }

  Widget _emailTextField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'E-mail',
        border: OutlineInputBorder()
      ),
    );
  }

  Widget _senhaTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Senha',
        border: OutlineInputBorder()
      ),
    );
  }

  Widget _informacoesTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Informações Adicionais',
        border: OutlineInputBorder()
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(APP_NAME),
        centerTitle: true
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          _identificadorTextField(),
          SizedBox(height: 8),
          _servicoTextField(),
          SizedBox(height: 8),
          _usuarioTextField(),
          SizedBox(height: 8),
          _emailTextField(),
          SizedBox(height: 8),
          _senhaTextField(),
          SizedBox(height: 8),
          _informacoesTextField()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check, color: Colors.white),
        backgroundColor: Color.fromARGB(255, 3, 219, 125),
        onPressed: (){}
      ),
    );
  }
}