import 'package:flutter/material.dart';

class TelaSelecaoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tela de Seleção',
      home: TelaSelecaoPage(),
    );
  }
}

class TelaSelecaoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return TelaSelecaoState();
  }
}

String _cursoSelecionado = 'Informática';

class TelaSelecaoState extends State<TelaSelecaoPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela de Seleção'),
      ),

      body: Padding(
        padding: EdgeInsetsGeometry.all(25),
        child: Column(
          children: [
            Text('Selecione uma opção:'),

            SizedBox(
              height: 50,
            ),

            DropdownButton<String>(
              value: _cursoSelecionado,
              isExpanded: true,
              onChanged: (String? novaescolha){
                setState((){
                  _cursoSelecionado = novaescolha ?? 'Informática';
                });
              },
              items: <String>[
                'Informática',
                'Administração',
                'Eletrônica',
              ]
              .map<DropdownMenuItem<String>>((String valor){
                return DropdownMenuItem<String>(
                  value: valor,
                  child: Text(valor),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}