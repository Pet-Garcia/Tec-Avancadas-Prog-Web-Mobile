/*
Exercícios usando for

3) Contar múltiplos
Leia dois inteiros N e k. Conte quantos números no intervalo 1..N (inclusive) são múltiplos de k e exiba a quantidade.
*/

import 'dart:io';

void main() {

  stdout.write('Insira um numero para o limite superior: \n');
  String? valor = stdin.readLineSync();

  if(valor == null || valor.isEmpty){
    stdout.write('O campo numero é obrigatorio!\n');
    return;
  }

  stdout.write('Insira um numero para o multiplicador procurado: \n\n');
  String? procurado = stdin.readLineSync();

  if(procurado == null || procurado.isEmpty){
    stdout.write('O campo numero é obrigatorio!\n');
    return;
  }

  int? num = int.tryParse(valor) ?? 0;
  int? mult = int.tryParse(procurado) ?? 0;
  int qtd = 0;

  for(int cont = 1; cont <= num; cont++){
    if(cont % mult == 0){
      stdout.write('$cont\n');
      qtd++;
    }
  };

  stdout.write('Ha $qtd numeros multiplos de $mult\n');
  return;
}