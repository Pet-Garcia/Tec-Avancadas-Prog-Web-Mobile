// rendimento de 0.5% ao mes

import 'dart:io';

void main() {
  double resultado;

  stdout.write('Insira a quantia presente na conta: \n');
  double? conta = double.tryParse(stdin.readLineSync()!) ?? 0;

  resultado = conta * 1.005;
  String resultadocima = resultado.toStringAsFixed(2);

  stdout.write('O valor após o rendimento de u mês é:');
  stdout.write('Valor: $resultadocima \n');

  return;
}