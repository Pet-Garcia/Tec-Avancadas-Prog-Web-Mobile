//Não precisa ter as tres classes juntas, mas é padrão na programação flutter
import 'package:flutter/material.dart';

// Stateless = estatico
// Statefull = dinamico

class OlaMundoApp extends StatelessWidget {
  // comando build e aparece a estrutura para
  @override
  Widget build(BuildContext context) {
    // MaterialApp configura propriedades globais do aplicativo, obrigatorio
    // Tela(Painel(Botao('Salvar'););); Encadeamento de Widgets
    return MaterialApp(
      // É o titulo da aplicação(Nome do app que aparece antes de entrar ou na pagina da playstore), não o titulo que aparece em cima da tela ao inicializar
      title: 'Meu Primeiro Aplicativo', // Construtor nomeado> propriedade: valor
      home: OlaMundoPage(), // Quem será a página principal
      // Virgula no final é opcional mas tem uma função
    );
  }
}

// Pagina do aplicativo
class OlaMundoPage extends StatefulWidget {
  // comando createState
  @override
  State<StatefulWidget> createState() {
    return OlaMundoState();
  }
}

// <OlaMundoPage> = diamante<> = deixa de ser generico
// Componentes do aplicativo
class OlaMundoState extends State<OlaMundoPage>{
  // comando build
  @override
  Widget build(BuildContext context) {
    //Aqui é construido a página. Construido o visual e o comportamental

    // Uma área semelhante ao JFrame, ele gera a aba onde o botão minimizar aparece
    return Scaffold(
      // O titulo que fica na aba superior do app
      appBar: AppBar(
        // Titulo do app. Text = widget que apresenta texto, semelhante ao JLabel
        title: Text('Minha Primeira Pagina')
      ),
      // Abaixo do appBar, o center centraliza o que está dentro
      body: Center(
        // child = apenas um componente
        // children = um vetor de componentes
        child: Text('Ola Mundo Fatec!'),
      )
    );
    
  }
}