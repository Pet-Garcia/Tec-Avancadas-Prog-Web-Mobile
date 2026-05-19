import 'package:flutter/material.dart';

class TelaPreferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferências',
      home: TelaPreferenciasPage(),
    );
  }
}

class TelaPreferenciasPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return TelaPreferenciasState();
  }
}

bool _notificacaoAtiva = false;
bool _aceitarTermos = false;

class TelaPreferenciasState extends State<TelaPreferenciasPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferências'),
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

            CheckboxListTile(
              title: Text('Aceito receber novidades'),
              controlAffinity: ListTileControlAffinity.leading,
              value: _notificacaoAtiva,
              onChanged: (bool? value){
                setState(() {
                  _notificacaoAtiva = value!;
                });
              }
            ),

            CheckboxListTile(
              title: Text('Aceito os termos de uso'),
              controlAffinity: ListTileControlAffinity.leading,
              value: _aceitarTermos,
              onChanged: (bool? value){
                setState(() {
                  _aceitarTermos = value!;
                });
              }
            ),

          ]
        ),
      )
    );
  }
}