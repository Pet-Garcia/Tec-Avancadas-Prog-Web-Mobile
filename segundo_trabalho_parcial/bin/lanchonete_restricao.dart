/*
6. Uma lanchonete está enfrentando dificuldades para atender certos pedidos devido
a restrições em algumas combinações do cardápio. As regras são as seguintes:
● O lanche Bauru não pode ser acompanhado de Guaraná.
● Se o cliente escolher X-Frango, não poderá pedir Água.
● Ao pedir Pizza, as únicas bebidas permitidas são Vinho ou Água.
Com base nessas restrições, desenvolva um programa que leia o lanche e a
bebida escolhidos pelo cliente e determine se o pedido pode ou não ser atendido.
*/

import 'dart:io';

void main() {
  var comidas = [101, 102, 103, 104, 105, 106, 107];
  var bebidas = [108, 109, 110, 111];

  stdout.write('--- LANCHONETE ---\n');
  stdout.write('-*- COMIDAS -*-\n');
  stdout.write('Lanche | Codigo | Valor (RS) \n');
  stdout.write('Cachorro Quente| 101 | 14.20 \n');
  stdout.write('Bauru Simples | 102 | 12.30 \n');
  stdout.write('Bauru com Ovo | 103 | 13.50 \n');
  stdout.write('Hamburguer | 104 | 10.20 \n');
  stdout.write('Cheeseburger | 105 | 15.30 \n');
  stdout.write('X-Frango | 106 | 13.50 \n');
  stdout.write('Pizza | 107 | 16.20 \n');
  
  stdout.write('Insira o codigo da comida: \n');
  String? codigocomida = stdin.readLineSync();

  if(codigocomida == null || codigocomida.isEmpty){
    stdout.write('E obrigatorio o campo codigo!\n');
    return;
  }

  double? opcao = double.tryParse(codigocomida) ?? 0;
  double total = 0;

  switch(opcao){
    case 101:
      total = 14.2;

    case 102:
      total = 12.3;

    case 103:
      total = 13.5;

    case 104:
      total = 10.2;

    case 105:
      total = 15.3;

    case 106:
      total = 13.5;
    
    case 107:
      total = 16.2;

    default:
      stdout.write('Codigo invalido!\n');
      return;
  }

  stdout.write('-*- BEBIDAS -*-\n');
  stdout.write('Refrigerante | 108 | 10.00 \n');
  stdout.write('Guarana | 109 | 10.00 \n');
  stdout.write('Agua | 110 | 1.00 \n');
  stdout.write('Vinho | 111 | 12.00 \n');
  stdout.write('Insira o codigo da bebida: \n');
  String? codigobebida = stdin.readLineSync();
  
  if(codigobebida == null || codigobebida.isEmpty){
    stdout.write('E obrigatorio que algum valor seja inserido!\n');
    return;
  }

  double? opcao2 = double.tryParse(codigobebida) ?? 0;

  switch(opcao2){
    case 108:
      if(opcao == 107){
        stdout.write('A Pizza nao pode ser pedida com refrigerante');
        return;
      }
      total = total + 10;

    case 109:
      if(opcao == 102 || opcao == 103){
        stdout.write('O lanche Bauru nao pode ser pedido com Guarana\n');
        return;
      } else if(opcao == 107){
        stdout.write('A Pizza nao pode ser pedida com Guarana');
      } else{
        total = total + 10;
      }

    case 110:
      if(opcao == 106){
        stdout.write('O lanche X-Frango nao pode ser pedido com agua\n');
        return;
      } else{
        total = total + 1;
      }
    
    case 111:
      total = total + 12;

    default:
      stdout.write('Codigo invalido!\n');
      return;
  }

  stdout.write('O valor da compra eh de: $total\n');
}