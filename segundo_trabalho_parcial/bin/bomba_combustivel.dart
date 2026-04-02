/*
  7. Uma bomba de combustível cobra diferentes preços conforme o tipo:
● Gasolina comum: R$ 6,50 por litro
● Gasolina premium: R$ 7,80 por litro
● Diesel: R$ 5,90 por litro
● Álcool: R$ 4,20 por litro
O programa deve ler o tipo de combustível (1, 2, 3 ou 4) e a quantidade de litros
desejada. Calcule e exiba:
● Tipo de combustível escolhido
● Quantidade de litros
● Preço unitário
● Valor total a pagar
Se o tipo de combustível for inválido, exiba: "Combustível inválido."
*/

import 'dart:io';

void main() {
  stdout.write('--- Bomba de Combustivel ---\n');
  stdout.write('Combustivel | Codigo | Valor (RS)\n');
  stdout.write('Gasolina Comum | 1 | RS: 6.50\n');
  stdout.write('Gasolina Premium | 2 | RS: 7.80\n');
  stdout.write('Diesel | 3 | RS: 5.90\n');
  stdout.write('Alcool | 4 | RS: 4.20\n');
  String? combustivel = stdin.readLineSync();

  if(combustivel == null || combustivel.isEmpty){
    stdout.write('E obrigatorio o campo codigo!\n');
    return;
  }

  double? opcao = double.tryParse(combustivel) ?? 0;
  String nomecombustivel;
  double preco;

  switch(opcao){
    case 1:
      nomecombustivel =  'Gasolina Comum';
      preco = 6.5;

    case 2:
      nomecombustivel =  'Gasolina Premium';
      preco = 7.8;

    case 3:
      nomecombustivel =  'Diesel';
      preco = 5.9;

    case 4:
      nomecombustivel =  'Alcool';
      preco = 4.2;

    default:
      stdout.write('Combustivel invalido!\n');
      return;
  }

  stdout.write('Insira a quantidade de litros de Combustivel comprado:\n');
  String? valor = stdin.readLineSync();

  if(valor == null || valor.isEmpty){
    stdout.write('E obrigatorio a inserção da quantidade!\n');
    return;
  }
  
  double? quantidade = double.tryParse(valor) ?? 1;
  double total = preco * quantidade;

    stdout.write('\n --- Resultado da Compra --- \n');
    stdout.write('Combustivel: $nomecombustivel | Quantidade Comprada: $quantidade | Valor por Litro: $preco| Total(RS): $total\n');
    
    return;

}