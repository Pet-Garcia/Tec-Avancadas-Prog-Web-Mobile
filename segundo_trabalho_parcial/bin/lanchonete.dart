/*
3. Uma lanchonete oferece o seguinte cardápio:
Lanche Código Valor(R$)
Cachorro Quente 101 14,20
Bauru Simples 102 12,30
Bauru com Ovo 103 13,50
Hambúrguer 104 10,20
Cheeseburger 105 15,30
Refrigerante 106 10,00
Desenvolva um programa que leia o código do item pedido e a quantidade
desejada. O programa deve calcular e exibir o valor total a ser pago pelo cliente.
Caso seja informado um código que não esteja na lista, o sistema deve exibir a
mensagem "Código do lanche inválido".
*/

import 'dart:io';

void main() {
  stdout.write('--- LANCHONETE ---\n');
  stdout.write('Lanche | Codigo | Valor (RS) \n');
  stdout.write('Cachorro Quente| 101 | 14.20 \n');
  stdout.write('Bauru Simples | 102 | 12.30 \n');
  stdout.write('Bauru com Ovo | 103 | 13.50 \n');
  stdout.write('Hamburguer | 104 | 10.20 \n');
  stdout.write('Cheeseburger | 105 | 15.30 \n');
  stdout.write('Refrigerante | 106 | 10.00 \n');
  
  stdout.write('Insira o codigo do produto: \n');
  String? codigo = stdin.readLineSync();

  if(codigo == null || codigo.isEmpty){
    stdout.write('E obrigatorio o campo codigo!\n');
    return;
  }

  stdout.write('Insira a quantidade do produto que deseja: \n');
  String? valor = stdin.readLineSync();
  
  if(valor == null || valor.isEmpty){
    stdout.write('E obrigatorio que algum valor seja inserido!\n');
    return;
  }

  double? opcao = double.tryParse(codigo) ?? 0;
  double? quantidade = double.tryParse(valor) ?? 0;
  double? total;

  switch(opcao){
    case 101:
      total = 14.2 * quantidade;

    case 102:
      total = 12.3 * quantidade;

    case 103:
      total = 13.5 * quantidade;

    case 104:
      total = 10.2 * quantidade;

    case 105:
      total = 15.3 * quantidade;

    case 106:
      total = 10 * quantidade;
  }

  stdout.write('O valor da compra eh de: $total\n');
}