/*
Exercícios usando do..while

7) Menu de operações
Exiba um menu com as opções:
1 – Somar
2 – Subtrair
0 – Sair
O programa deve continuar exibindo o menu e lendo a opção do usuário até que ele escolha 0.
*/

import 'dart:io';

void main() {
  int? opcao = 1;
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