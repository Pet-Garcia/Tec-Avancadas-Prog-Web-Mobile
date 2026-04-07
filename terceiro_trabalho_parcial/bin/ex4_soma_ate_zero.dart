/*
Exercícios usando while

4) Soma até zero
Leia números inteiros repetidamente até que o usuário digite 0.
Ao final, mostre:
a soma dos números digitados
a quantidade de números digitados (não contar o 0)
*/

import 'dart:io';

void main() {

  int? num = 1;
  int soma = 0;

  while(num != 0){
    stdout.write('Insira o numero 0 para parar a soma\n');
    stdout.write('Insira um numero para a soma: \n');
    String? valor = stdin.readLineSync();

    if(valor == null || valor.isEmpty){
      stdout.write('O campo numero é obrigatorio!\n');
      continue;
    }

    num = int.tryParse(valor) ?? 0;

    soma += num;
  }
  stdout.write('A soma de todos os numeros eh: $soma\n');

  return;
}