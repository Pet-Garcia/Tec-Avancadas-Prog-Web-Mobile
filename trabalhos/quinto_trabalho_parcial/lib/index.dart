import 'package:flutter/material.dart';
import 'package:quinto_trabalho_parcial/ex1_calc_imc.dart';
import 'package:quinto_trabalho_parcial/ex2_conversor_temperatura.dart';
import 'package:quinto_trabalho_parcial/ex3_media_notas.dart';
import 'package:quinto_trabalho_parcial/ex4_adivinhacao.dart';

class TelaIndexExerciciosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Index Exercícios',
      home: TelaIndexExerciciosPage(),
    );
  }
}

class TelaIndexExerciciosPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return TelaIndexExerciciosState();
  }
}

class TelaIndexExerciciosState extends State<TelaIndexExerciciosPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Exercícios - Angelo'),
      ),

      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaIMCApp()),
                );
              },
              child: Text('Exercício 1 - Tela Calculadora de IMC'),
            ),

            SizedBox(
              height: 20,
            ),

            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaConversaoApp()),
                );
              },
              child: Text('Exercício 2 - Conversor de Temperatura'),
            ),

            SizedBox(
              height: 20,
            ),

            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaMediaApp()),
                );
              },
              child: Text('Exercício 3 - Aprovado/Reprovado com Média'),
            ),

            SizedBox(
              height: 20,
            ),

            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaAdivinhacaoApp()),
                );
              },
              child: Text('Exercício 4 - Adivinhe o Número'),
            ),

          ],
        ),
      ),
    );
  }
}