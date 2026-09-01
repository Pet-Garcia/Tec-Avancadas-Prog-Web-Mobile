import 'package:flutter/material.dart';

class TelaIMCApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora de IMC',
      home: TelaIMCPage(),
    );
  }
}

class TelaIMCPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return TelaIMCState();
  }
}

class TelaIMCState extends State<TelaIMCPage>{
  double _peso = 0.0;
  double _altura = 0.0;
  double imc = 0.0;
  String classificacao = '';

  TextEditingController _pesoController = TextEditingController();
  TextEditingController _alturaController = TextEditingController();

  void calcularIMC(){
    _peso = double.tryParse(_pesoController.text) ?? 0;
    _altura = double.tryParse(_alturaController.text) ?? 0.0;
    
    imc = _peso / (_altura * _altura);
    
    if(imc < 18.5){
      classificacao = 'Abaixo do normal';
    } else if(imc >= 18.5 && imc < 25){
      classificacao = 'Normal';
    } else if(imc >= 25 && imc < 30){
      classificacao = 'Sobrepeso';
    } else{
      classificacao = 'Obesidade';
    }

    setState(() {
      classificacao = classificacao;
      imc = imc;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de IMC'),
      ),

      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'IMC ${imc.toStringAsFixed(2)}',
            ),

            Text(
              'Classificação: $classificacao',
            ),

            SizedBox(
              height: 20,
             ),

            TextField(
              controller: _pesoController,
              decoration: InputDecoration(
                labelText: 'Peso (Kg)',
              ),
              keyboardType: TextInputType.number,
            ),

            SizedBox(
              height: 20,
            ),

            TextField(
              controller: _alturaController,                
              decoration: InputDecoration(
                labelText: 'Altura (m) (0.00)',
              ),
              keyboardType: TextInputType.number,
            ),

            SizedBox(
              height: 20,
            ),

            ElevatedButton(
              onPressed: (){
                calcularIMC();
              },
              child: Text('Calcular IMC'),
            ),
          ],
        ),
      ),
    );
  }
}