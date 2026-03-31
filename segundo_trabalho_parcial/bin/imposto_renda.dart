/*
5. Desenvolva um programa que calcule o imposto de renda de uma pessoa com
base em seu salário mensal. As alíquotas são:
● Salário até R$ 2.000,00: Isento (0% de imposto)
● Salário de R$ 2.000,01 a R$ 5.000,00: 10% de imposto
● Salário de R$ 5.000,01 a R$ 10.000,00: 15% de imposto
● Salário acima de R$ 10.000,00: 20% de imposto
O programa deve ler o salário, calcular o valor do imposto e exibir:
● Salário bruto
● Valor do imposto
● Salário líquido (após desconto)
*/

import 'dart:io';

void main() {
  stdout.write('Insira o valor do salario: \n');
  String? valor = stdin.readLineSync();

  if(valor == null || valor.isEmpty){
    stdout.write('Valor invalido!\n');
    return;
  }

  double? salario = double.tryParse(valor) ?? 0;
  double imposto = 0;
  double salarioliquido;

  if(salario <= 2000){
    salarioliquido = salario;
  } else if(salario <= 5000){
    imposto = salario * 0.10;
    salarioliquido = salario - imposto;
  } else if(salario <= 10000){
    imposto = salario * 0.15;
    salarioliquido = salario - imposto;
  }else{
    imposto = salario * 0.20;
    salarioliquido = salario - imposto;
  }

  stdout.write('Salario: $salario | Valor do Imposto: $imposto | Salario Final: $salarioliquido\n');
  return;
}