import 'package:flutter/material.dart';

class TelaConfiguracaoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Configurações',
      home: TelaConfiguracaoPage(),
    );
  }
}

class TelaConfiguracaoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return TelaConfiguracaoState();
  }
}

bool _notificacaoAtiva = false;
bool _modoEscuroAtivo = false;

class TelaConfiguracaoState extends State<TelaConfiguracaoPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),

      body: Padding(
        padding: EdgeInsetsGeometry.all(25),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Qual o seu Nome?',
              ),

            ),

            SizedBox(
              height: 50,
            ),

            SwitchListTile(
              title: Text('Ativar Notificações'),
              value: _notificacaoAtiva,
              onChanged: (bool novovalor){
                setState((){
                  _notificacaoAtiva = novovalor;
                });
              }
            ),

            SwitchListTile(
              title: Text('Modo Escuro'),
              value: _modoEscuroAtivo,
              onChanged: (bool novovalor){
                setState((){
                  _modoEscuroAtivo = novovalor;
                });
              }
            )

          ]
        )
      )
    );
  }
}