import 'dart:io';

void main() {

  stdout.write('Insira a marcação do hodometro do inicio do dia: \n');
  double? hodometroinicio = double.tryParse(stdin.readLineSync()!) ?? 0;

  stdout.write('Insira a marcação do hodometro do final do dia: \n');
  double? hodometrofinal  = double.tryParse(stdin.readLineSync()!) ?? 0;

  stdout.write('Insira a quantidade em litros de combustivel consumido no decorrer do dia: \n');
  double? combustivel = double.tryParse(stdin.readLineSync()!) ?? 0;

  stdout.write('Insira o valor em RS do total pago pelos passageiros no dia: \n');
  double? valor = double.tryParse(stdin.readLineSync()!) ?? 0;

  double hodometrovalor = hodometrofinal - hodometroinicio;
  double combustivelvalor = combustivel * 6.5;
  double lucro = valor - combustivelvalor;

  stdout.write('Média de combustível: $hodometrovalor / $combustivel (KM/L) \n');
  stdout.write('Lucro Liquido: $lucro \n');

  return;
}