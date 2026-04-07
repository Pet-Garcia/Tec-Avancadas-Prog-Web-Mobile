/*
Exercícios usando while

6) Ler até a palavra “sair”
Leia palavras (strings) repetidamente até o usuário digitar sair.
Ao final, mostre quantas palavras foram digitadas (não contar sair).
*/

import 'dart:io';

void main() {

  String? palavra = '';
  int cont = 0;

  while(palavra != 'sair'){
    stdout.write('Insira a palavra "sair" para sair\n');
    stdout.write('Insira uma palavra: \n');
    String? valor = stdin.readLineSync();

    if(valor == null || valor.isEmpty){
      stdout.write('O campo palavra é obrigatorio!\n');
      continue;
    }
    
    palavra = valor.trim();

    stdout.write('$palavra\n');

    if(palavra.toLowerCase() != 'sair'){
      cont++;
    }

  }

  stdout.write('Total de Palavras: $cont\n');

  return;
}