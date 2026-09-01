import 'package:flutter/material.dart';

class TelaConversaoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Conversor de Temperatura',
      home: TelaConversaoPage(),
    );
  }
}

class TelaConversaoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return TelaConversaoState();
  }
}

class TelaConversaoState extends State<TelaConversaoPage>{
  String _opcao = 'C -> F';
  double _temperatura = 0.0;

  TextEditingController _temperaturaController = TextEditingController();

  void CalcularTemp(){
    _temperatura = double.tryParse(_temperaturaController.text) ?? 0.0;

    if(_opcao == 'C -> F'){
      _temperatura = (_temperatura * 9/5) + 32;
    } else if(_opcao == 'F -> C'){
      _temperatura = (_temperatura - 32) * 5/9;
    }

    setState(() {
      _temperatura = _temperatura;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conversor de Temperatura'),
      ),

      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            DropdownButton<String>(
              value: _opcao,
              onChanged: (String? escolha) {
                setState(() {
                  _opcao = escolha ?? 'C -> F';
                });
              },
              items: <String>['C -> F', 'F -> C'].map((String escolha) {
                return DropdownMenuItem<String>(
                  value: escolha,
                  child: Text(escolha),
                );
              }).toList(),
            ),

             SizedBox(
              height: 20,
            ),

            TextField(
              controller:  _temperaturaController,
              decoration: InputDecoration(
                labelText: 'Digite a temperatura: ',
              ),
              keyboardType: TextInputType.number,
              
            ),

            SizedBox(
              height: 20,
            ),

            ElevatedButton(
              onPressed: CalcularTemp,
              child: Text('Converter'),
            ),

             SizedBox(
              height: 20,
            ),

            Text(
              'Temperatura ${_temperatura.toStringAsFixed(2)} $_opcao',
            )
          ],
        ),
      ),
    );
  }
}