/*
8. Uma companhia de energia cobra de acordo com o consumo mensal (em kWh):
● Até 100 kWh: R$ 0,80 por kWh
● De 101 a 300 kWh: R$ 1,10 por kWh
● De 301 a 500 kWh: R$ 1,40 por kWh
● Acima de 500 kWh: R$ 1,80 por kWh
Além disso, se o consumo ultrapassar 400 kWh, há uma taxa extra de 10% sobre o
valor total. O programa deve ler o consumo em kWh e exibir:
● Consumo mensal
● Valor base da conta
● Taxa extra (se aplicável)
● Valor total da conta
*/

import 'dart:io';

void main() {
  stdout.write('Insira o valor de consumo mensal da eletricidade: \n');
  String? valor = stdin.readLineSync();

  if(valor == null || valor.isEmpty){
    stdout.write('E obrigatorio a insercao de um valor!\n');
    return;
  }

  double? consumo = double.tryParse(valor) ?? 0;
  double valorbase = 0;
  double taxaextra = 0;
  double total = 0;

  if(consumo <= 100){
    valorbase = consumo * 0.8;
    total = valorbase;
  } else if(consumo <= 300){
    valorbase = consumo * 1.1;
    total = valorbase;
  } else if(consumo <= 500){
    valorbase = consumo * 1.4;
    if(consumo > 400){
      taxaextra = valorbase * 0.1;
    }
    total = valorbase  + taxaextra;
  } else if(consumo > 500){
    valorbase = consumo * 1.8;
    taxaextra = valorbase * 0.1;
    total = valorbase + taxaextra;
  }

  stdout.write('Consumo Mensal: $consumo\n');
  stdout.write('Valor Base: $valorbase\n');
  if(consumo > 400){
    stdout.write('Taxa Extra: $taxaextra\n');
  }
  stdout.write('Valor Total: $total\n');

  return;
}