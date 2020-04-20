import 'package:flutter/material.dart';

import 'package:mypass/app/shared/utils/constants.dart';

class DadosServico extends StatelessWidget {

  var _identificadorStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, color: Colors.white);
  var _servicoStyle = TextStyle(color: Colors.grey[300]);
  var _textoInfoStyle = TextStyle(fontSize: 18.0, color: Colors.grey[800]);

  Widget _header() {
    return SizedBox(
            height: 200.0,
            width: double.infinity,
            child: Stack(
              children: <Widget>[
                Image.asset('assets/img/oil-background.jpg', fit: BoxFit.cover, width: double.infinity),
                Container(
                  margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Wrap(
                      direction: Axis.vertical,
                      children: <Widget>[
                        Text('GTA V', style: _identificadorStyle),
                        Text('gtav.com', style: _servicoStyle)
                      ]
                    ),
                  )
                )
              ]
          ));
  }

  Widget _infoUsuarioTile(BuildContext context, IconData icone, String texto) {
    return Row(children: <Widget>[
        Icon(icone, color: Theme.of(context).iconTheme.color),
        SizedBox(width: 8.0),
        Text(texto, style: _textoInfoStyle)
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(APP_NAME),
        centerTitle: true
      ),
      body: ListView(
        children: <Widget>[
          _header(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: <Widget>[
              _infoUsuarioTile(context, Icons.person, 'João da Silva'),
              _infoUsuarioTile(context, Icons.email, 'joaodasilva@mail.com'),
              _infoUsuarioTile(context, Icons.lock, 'abcd1234'),
              _infoUsuarioTile(context, Icons.info, 'Nenhuma')
            ],)
          )
          
        ]
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.edit, color: Colors.white),
        backgroundColor: Theme.of(context).accentColor,
        onPressed: (){}
      )
    );
  }
}