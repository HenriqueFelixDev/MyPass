import 'package:flutter/material.dart';

import 'package:mypass/app/shared/models/servico.dart';

class ConsultaServicosTile extends StatelessWidget {

  final Servico servico;
  final Function() onTap;
  ConsultaServicosTile(this.servico, {this.onTap});

  var _tituloListViewStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.layers, size: 32, color: Theme.of(context).iconTheme.color),
      title: Text(servico.identificador, style: _tituloListViewStyle),
      subtitle: Text(servico.servico),
      onTap: onTap
    );
  }
}
