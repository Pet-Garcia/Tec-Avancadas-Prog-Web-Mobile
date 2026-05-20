import 'package:flutter/material.dart';

class TelaCadastroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cadastro',
      home: TelaCadastroPage(),
    );
  }
}

class TelaCadastroPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return TelaCadastroState();
  }
}

class TelaCadastroState extends State<TelaCadastroPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),

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
              height: 50
            ),

            TextField(
              decoration: InputDecoration(
                labelText: 'Digite sua idade',
              )
            ),

            SizedBox(
              height: 50
            ),

            TextField(
              decoration: InputDecoration(
                labelText: 'Digite seu email',
              )
            ),

            SizedBox(
              height: 50
            ),

            TextButton(
              onPressed:() {
                // Só para quando for realmente utilizar, isso só foi feito para demonstrar o site
                print('Botão de cadastro pressionado');
              },
              child: const Text ('Cadastrar'),
            )

          ],
        )
      )
    );
    
  }
}