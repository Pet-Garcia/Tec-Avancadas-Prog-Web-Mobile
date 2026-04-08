/*
Exercícios usando do..while

8) Validação de entrada (nota)
Solicite ao usuário uma nota entre 0 e 10.
Enquanto a nota informada estiver fora do intervalo, solicite novamente. Ao final, exiba a nota válida.
*/

import 'dart:io';

void main() {
  int? validacao = 0;
  String? valor;
  int? nota;

  stdout.write('Valores validos de 0 a 10 \n\n');

  while(validacao != 1){
    stdout.write('Insira o valor da nota: \n');
    valor = stdin.readLineSync();

    if(valor == null || valor.isEmpty){
      stdout.write('O campo opcao é obrigatorio!\n');
      continue;
    }

    nota = int.tryParse(valor) ?? 11;

    if(nota < 0 || nota > 10){
      stdout.write('O valor deve estar entre 0 e 10\n');
    } else{
      validacao = 1;
    }
  }

  stdout.write('O valor da nota eh: $nota\n');
  return;
}