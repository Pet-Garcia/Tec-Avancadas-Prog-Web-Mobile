import 'package:flutter/material.dart';
import 'dart:math';

class TelaAdivinhacaoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Advinhe o Número',
      home: TelaAdivinhacaoPage(),
    );
  }
}

class TelaAdivinhacaoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TelaAdivinhacaoState();
  }
}

class TelaAdivinhacaoState extends State<TelaAdivinhacaoPage>{

  int _numeroAleatorio = 0;
  int _numeroUsuario = 0;
  int _tentativas = 0;
  String _dica = '';

  TextEditingController _numeroUsuarioController = TextEditingController();

  @override
  void initState() {
    super.initState();
    Aleatorio();
  }

  void Aleatorio(){
    Random random = Random();

    _numeroAleatorio = random.nextInt(100) + 1;
     _tentativas = 0;
  }

  void Chute(){
    setState(() {
      _numeroUsuario = int.tryParse(_numeroUsuarioController.text) ?? 0;
      _tentativas++;

      if(_numeroUsuario < _numeroAleatorio){
        _dica = 'Maior';
      } else if(_numeroUsuario > _numeroAleatorio){
        _dica = 'Menor';
      } else if(_numeroUsuario == _numeroAleatorio){
        _dica = 'Acertou!';
      } else{
        _dica = 'Número fora da área especificada';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advinhe o Número'),
      ),

      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            TextField(
              controller: _numeroUsuarioController,
              decoration: InputDecoration(
                labelText: 'Escolha um número de 1 a 100',
              ),
              keyboardType: TextInputType.number,
            ),

            SizedBox(
              height: 20,
            ),

            ElevatedButton(
              onPressed: Chute,
              child: Text('Tentar'),
            ),

            SizedBox(
              height: 20,
            ),

            Text(
              'Número Chutado: $_numeroUsuario',
            ),

            Text(
              'Tentativas: $_tentativas',
            ),

            SizedBox(
              height: 20,
            ),

            Text(
              '$_dica',
            )

          ],
        ),
      ),
    );
  }
}