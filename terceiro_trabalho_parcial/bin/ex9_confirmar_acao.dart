/*
Exercícios usando do..while

9) Confirmar ação
Pergunte ao usuário: “Deseja continuar? (s/n)”.
Leia a resposta e trate as opções informadas.
*/

import 'dart:io';

String? tratarpalavra() {
  String? palavra = stdin.readLineSync();

  if (palavra == null || palavra.isEmpty) {
    stdout.write('O campo confirmacao é obrigatorio!\n');
    return null;
  }

  String palavraLimpa = palavra.trim();

  return palavraLimpa.toLowerCase();
}

void main() {
  int? opcao = 1;
  String? verificacao;

  String? valor;
  String? num1temp;
  String? num2temp;
  int? num1;
  int? num2;
  int result;

  while(opcao != 0){
    stdout.write('Menu de Operações\n');
    stdout.write('1 – Somar\n');
    stdout.write('2 – Subtrair\n');
    stdout.write('0 – Sair\n');
    stdout.write('Insira um valor: \n');
    valor = stdin.readLineSync();

    if(valor == null || valor.isEmpty){
      stdout.write('O campo opcao é obrigatorio!\n');
      return;
    }

    opcao = int.tryParse(valor) ?? 0;

    switch(opcao){
      case 1:
        stdout.write('Operacao de Soma:\n');
        stdout.write('Insira o primeiro numero: \n');
        num1temp = stdin.readLineSync();

        if(num1temp == null || num1temp.isEmpty){
          stdout.write('O campo numero é obrigatorio!\n');
          return;
        }

        stdout.write('Insira o segundo numero: \n');
        num2temp = stdin.readLineSync();

        if(num2temp == null || num2temp.isEmpty){
          stdout.write('O campo numero é obrigatorio!\n');
          return;
        }

        num1 = int.tryParse(num1temp) ?? 0;
        num2 = int.tryParse(num2temp) ?? 0;

        result = num1 + num2;

        stdout.write('O resultado da soma eh: $result\n\n');

        stdout.write('Deseja Continuar?(s/n)\n');
        verificacao = tratarpalavra() ?? '';
        if(verificacao == 'n'){
          opcao = 0;
        } else if(verificacao == 's'){
          stdout.write('Continuando...\n');
        } else{
          stdout.write('Valor invalido! Continuando como padrao.\n');
        }
        break;

      case 2:
        stdout.write('Operacao de Subtracao:\n');
        stdout.write('Insira o primeiro numero: \n');
        num1temp = stdin.readLineSync();

        if(num1temp == null || num1temp.isEmpty){
          stdout.write('O campo numero é obrigatorio!\n');
          return;
        }

        stdout.write('Insira o segundo numero: \n');
        num2temp = stdin.readLineSync();

        if(num2temp == null || num2temp.isEmpty){
          stdout.write('O campo numero é obrigatorio!\n');
          return;
        }

        num1 = int.tryParse(num1temp) ?? 0;
        num2 = int.tryParse(num2temp) ?? 0;

        result = num1 - num2;

        stdout.write('O resultado da soma eh: $result\n\n');

        stdout.write('Deseja Continuar?(s/n)\n');
        verificacao = tratarpalavra() ?? '';
        if(verificacao == 'n'){
          opcao = 0;
        } else if(verificacao == 's'){
        } else{
          stdout.write('Valor invalido! Continuando como padrao.');
        }
        break;

      case 0:
        opcao = 0;
        break;

      default:
        stdout.write('Opcao invalida. Insira o valor 1 ou 2 ou 0\n');
        break;
    }
  }
  
  return;
}