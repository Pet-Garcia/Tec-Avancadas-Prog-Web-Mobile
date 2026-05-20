import 'package:flutter/material.dart';

class TelaMatriculaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Matrícula',
      home: TelaMatriculaPage(),
    );
  }
}

class TelaMatriculaPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TelaMatriculaState();
  }
}

String _valorTurno = 'Manhã';
String _cursoSelecionado = 'Informática';

class TelaMatriculaState extends State<TelaMatriculaPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //titulo da barra de navegação
      appBar: AppBar(
        title: Text('Matrícula'),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(25),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Digite seu nome',
                )
            ),

            SizedBox(
              height: 20
            ),

            TextField(
              decoration: InputDecoration(
                labelText: 'Digite sua idade',
              )
            ),

            SizedBox(
              height: 20
            ),

            TextField(
              decoration: InputDecoration(
                labelText: 'Digite o nome do seu responsável',
              )
            ),

            SizedBox(
              height: 20
            ),

            RadioListTile<String>(
              value: 'Manhã',
              groupValue: _valorTurno,
              title: const Text('Manhã'),
              onChanged: (String? novoValor) {
                setState(() {
                  _valorTurno = novoValor ?? 'Manhã';
                });
              },
            ),

            RadioListTile<String>(
              value: 'Tarde',
              groupValue: _valorTurno,
              title: Text('Tarde'),
              onChanged: (String? novoValor) {
                setState(() {
                  _valorTurno = novoValor ?? 'Tarde';
                });
              }
            ),

            RadioListTile<String>(
              value: 'Noite',
              groupValue: _valorTurno,
              title: Text('Noite'),
              onChanged: (String? novoValor) {
                setState(() {
                  _valorTurno = novoValor ?? 'Noite';
                });
              }
            ),

            SizedBox(
              height: 20,
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
            ),

            SizedBox(
              height: 20,
            ),

            ElevatedButton(
                onPressed:() {
                  // só para quando for realmente utilizar, isso só foi feito para demonstrar o site
                  print('Matricula enviada');
                },
                child: const Text ('Enviar Matrícula')
            )
          ],
        ),
      ),
    );
  }
}