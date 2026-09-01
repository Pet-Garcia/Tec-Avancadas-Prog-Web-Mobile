import 'package:flutter/material.dart';

class TelaEscolhaTurnoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Escolha de Turno',
      home: TelaEscolhaTurnoPage(),
    );
  }
}

class TelaEscolhaTurnoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return TelaEscolhaTurnoState();
  }
}

String _valorTurno = 'Manhã';

class TelaEscolhaTurnoState extends State<TelaEscolhaTurnoPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Escolha de Turno'),
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
            )

          ]
        )
      )
    );
  }
}