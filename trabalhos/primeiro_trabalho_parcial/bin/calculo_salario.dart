import 'dart:io';

void main() {
  double resultado;

  stdout.write('Insira o valor ganho do funcionario por dia: \n');
  double? valor = double.tryParse(stdin.readLineSync()!) ?? 0;

  stdout.write('Insira a quantidade de horas trabalhados pelo funcionário: \n');
  double? horas = double.tryParse(stdin.readLineSync()!) ?? 0;

  resultado = valor * horas;
  String resultadocorrigido = resultado.toStringAsFixed(2);

  stdout.write('Salario Mensal: $resultadocorrigido\n');

  return;
}