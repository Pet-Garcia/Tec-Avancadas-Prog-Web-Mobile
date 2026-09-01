import 'dart:io';

void main() {
  // Verifica e depois converte
  stdout.write('Qual a nota da prova? ');
  String? valor1 = stdin.readLineSync();
  // ?? 0 -> se não conseguir nada, coloca 0 / tenta fazer o double.tryParse(valor1!) se não coloca 0
  double? prova = double.tryParse(valor1!) ?? 0;

  // Converte direto (não recomendado)
  stdout.write('Qual a nota do trabalho? ');
  double? trabalho = double.tryParse(stdin.readLineSync()!) ?? 0;

  double? media = prova * 0.6 + trabalho * 0.4;

  stdout.write('A sua média é $media \n');
}