/*
Exercícios usando for

2) Somatório de 1 a N
Leia um inteiro N e calcule a soma de 1 até N usando um laço for. Ao final, mostre o resultado.
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
  int soma = 0;

  for(int cont = 1; cont <= num; cont++){
    soma = soma + cont;
    stdout.write('$soma\n');
  };

  return;
}