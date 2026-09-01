import 'package:flutter/material.dart';

class TelaMediaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Média de Notas',
      home: TelaMediaPage(),
    );
  }
} 

class TelaMediaPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TelaMediaState();
  }
}

class TelaMediaState extends State<TelaMediaPage>{
  bool _temrecuperacao = false;
  String _resultado = 'Em Andamento';

  double _primeiraNota = 0.0;
  double _segundaNota = 0.0;
  double _notaRecuperacao = 0.0;

  double _media = 0.0;
  double _media_final = 0.0;

  TextEditingController _primeiraNotaController = TextEditingController();
  TextEditingController _segundaNotaController = TextEditingController();
  TextEditingController _notaRecuperacaoController = TextEditingController();

  void Calcular() {
    _primeiraNota = double.tryParse(_primeiraNotaController.text) ?? 0.0;
    _segundaNota = double.tryParse(_segundaNotaController.text) ?? 0.0;
    _notaRecuperacao = double.tryParse(_notaRecuperacaoController.text) ?? 0.0;

    _media = (_primeiraNota + _segundaNota) / 2;

    if(_temrecuperacao == false){
      _media_final = _media;
    } else{
      _media_final = (_media + _notaRecuperacao) / 2;
    }

    if(_media_final < 6.0){
      _resultado = 'Reprovado';
    } else{
      _resultado = 'Aprovado';
    }

    setState(() {
      _media_final = _media_final;
      _resultado = _resultado;
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Média das Notas'),
      ),

      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            TextField(
              controller: _primeiraNotaController,
              decoration: InputDecoration(
                labelText: 'Primeira Nota',
              ),
            ),

            SizedBox(
              height: 20,
            ),

            TextField(
              controller: _segundaNotaController,
              decoration: InputDecoration(
                labelText: 'Segunda Nota',
              ),
            ),

            SizedBox(
              height: 20,
            ),

            CheckboxListTile(
              title: Text('Tem Recuperação?'),
              controlAffinity: ListTileControlAffinity.leading,
              value: _temrecuperacao,
              onChanged: (bool? alterar){
                setState(() {
                  _temrecuperacao = alterar!;
                });
              },
            ),

            TextField(
              controller: _notaRecuperacaoController,
              enabled: _temrecuperacao,
              decoration: InputDecoration(
                labelText: 'Nota da Recuperação',
              ),
            ),

            SizedBox(
              height: 20,
            ),

            ElevatedButton(
              onPressed: Calcular,
              child: Text('Calcular'),
            ),

            SizedBox(
              height: 20,
            ),

            Text(
              'Media: ${_media_final.toStringAsFixed(2)}',
            ),
            Text(
              'Resultado: $_resultado',
            )

          ]
        ),
      ),
    );
  }
}