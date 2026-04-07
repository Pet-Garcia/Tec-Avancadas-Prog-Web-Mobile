/*
Exercícios usando while

5) Contar pares e ímpares
Leia inteiros até que o usuário digite 0.
Ao final, informe quantos números foram pares e quantos foram ímpares (não contar o 0).
*/


import 'dart:io';

void main() {

  int? num = 1;
  int contpar = 0;
  int contimpar = 0;

  stdout.write('Identificador de Par e Impar\n');

  while(num != 0){
    stdout.write('Insira o numero 0 para parar o programa\n');
    stdout.write('Insira um numero para identificar: \n');
    String? valor = stdin.readLineSync();

    if(valor == null || valor.isEmpty){
      stdout.write('O campo numero é obrigatorio!\n');
      continue;
    }

    num = int.tryParse(valor) ?? 0;

    if(num == 0){

    } else if(num % 2 == 0){
      contpar += 1;
    } else{
      contimpar += 1;
    }
    
  }

  stdout.write('Resultado dos pares e impares\n');
  stdout.write('Par: $contpar | Impar:  $contimpar\n');

  return;
}