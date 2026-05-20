import 'package:flutter/material.dart';
import 'package:quarto_trabalho_parcial/ex1_tela_login.dart';
import 'package:quarto_trabalho_parcial/ex2_tela_cadastro.dart';
import 'package:quarto_trabalho_parcial/ex3_tela_preferencias.dart';
import 'package:quarto_trabalho_parcial/ex4_tela_turno.dart';
import 'package:quarto_trabalho_parcial/ex5_tela_configuracao.dart';
import 'package:quarto_trabalho_parcial/ex6_tela_selecao.dart';
import 'package:quarto_trabalho_parcial/ex7_tela_matricula.dart';

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
        padding: EdgeInsetsGeometry.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaLoginApp()
                  ),
                );
              },
              child: Text('Exercício 1 - Tela de Login'),
            ),

            SizedBox(
              height: 20,
            ),

            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaCadastroApp()
                  ),
                );
              },
              child: Text('Exercício 2 - Tela de Cadastro'),
            ),

            SizedBox(
              height: 20,
            ),

            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaPreferenciasApp()
                  ),
                );
              },
              child: Text('Exercício 3 - Tela de Preferências'),
            ),

            SizedBox(
              height: 20,
            ),

            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaEscolhaTurnoApp()
                  ),
                );
              },
              child: Text('Exercício 4 - Tela de Turno'),
            ),

            SizedBox(
              height: 20,
            ),

            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaConfiguracaoApp()
                  ),
                );
              },
              child: Text('Exercício 5 - Tela de Configurações'),
            ),

            SizedBox(
              height: 20,
            ),

            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaSelecaoApp()
                  ),
                );
              },
              child: Text('Exercício 6 - Tela de Seleção'),
            ),

            SizedBox(
              height: 20,
            ),

            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaMatriculaApp()
                  ),
                );
              },
              child: Text('Exercício 7 - Tela de Matrícula'),
            ),

            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}