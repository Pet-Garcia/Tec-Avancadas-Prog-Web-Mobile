/*
Exercícios usando for

1) Contagem regressiva
Leia um número inteiro N e imprima os valores de N até 0 (inclusive).
*/

import 'dart:io';

void main() {

  stdout.write('Insira um numero: \n');
  String? valor = stdin.readLineSync();

  if(valor == null || valor.isEmpty){
    stdout.write('O campo numero é obrigatorio!\n');
    return;
  }

  int? num = int.tryParse(valor) ?? 0;

  for(int cont = num; cont >= 0; cont--){
    stdout.write('$cont\n');
  };

  return;
}