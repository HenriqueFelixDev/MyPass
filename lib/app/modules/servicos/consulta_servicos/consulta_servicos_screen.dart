import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mypass/app/modules/servicos/consulta_servicos/components/consulta_servicos_tile.dart';
import 'package:mypass/app/shared/models/servico.dart';

import 'package:mypass/app/shared/utils/constants.dart';

class ConsultaServicosScreen extends StatelessWidget {

  Widget _campoPesquisa() {
    return TextFormField(
        decoration: InputDecoration(
          hintText: 'Pesquisar...',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
          suffixIcon: Icon(Icons.search)
        )
    );
  }

  Widget _listaServicos() {
    return Expanded(
      child: ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ConsultaServicosTile(Servico(1, 'GTA V', 'gtav.com', null, null, null, null), onTap: () => Modular.to.pushNamed('/visualizar'));
      })
    );
  }
  
  var _resultadosStyle = TextStyle(color: Colors.grey[500]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(APP_NAME),
        centerTitle: true
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _campoPesquisa(),

            Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: Text('10 resultado(s) encontrado(s)', style: _resultadosStyle)),

            _listaServicos()
          ]
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Theme.of(context).accentColor,
        onPressed: () => Modular.to.pushNamed('/salvar')
      )
    );
  }
}