import 'package:flutter/material.dart';

class TelaLoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      home: TelaLoginPage(),

    );
  }
}

class TelaLoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TelaLoginState();
  }
}

class TelaLoginState extends State<TelaLoginPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //titulo da barra de navegação
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(25),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Digite seu email',
              ),
            ),

            SizedBox(
              height: 50,
            ),

            TextField(
              decoration: InputDecoration(
                labelText: 'Digite sua senha',
              ),
            ),

            SizedBox(
              height: 50,
            ),

            ElevatedButton(
              onPressed:() {
                // só para quando for realmente utilizar, isso só foi feito para demonstrar o site
                print('Botão de login pressionado');
              },
              child: const Text ('Entrar')
            )
          ],
        )
      )
    );
  }

}