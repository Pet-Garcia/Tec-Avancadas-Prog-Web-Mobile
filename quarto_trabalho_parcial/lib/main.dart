//Programa principal do aplicativo, é o ponto de entrada do aplicativo, ou seja, é onde o aplicativo começa a ser executado. Ele é responsável por iniciar o aplicativo e configurar as coisas globais do aplicativo, como o tema, as rotas, etc.
import 'package:flutter/material.dart';
import 'package:quarto_trabalho_parcial/Ex5_tela_configuracao.dart';

//Testaremos nas aulas a versão web
//Sempre mudar se não ele gera o de android, falando que não tem emulador.

//Tem que escolher o device
//Ctrl + Shift + P > Flutter: Select Device > Chrome (web) ou Edge (web)

void main(){
  runApp(TelaConfiguracaoApp());
}