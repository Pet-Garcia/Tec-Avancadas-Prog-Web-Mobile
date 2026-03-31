import 'dart:io';

void main() {

  stdout.write('Insira o valor do produto: \n');
  String? valor = stdin.readLineSync();

  if(valor == null || valor.isEmpty){
    stdout.write('O campo do valor do produto é obrigatorio!\n');
    return;
  }
  
  stdout.write('Descontos por regiao: \n');
  stdout.write('Código 1 – Região Norte: 5% de desconto\n');
  stdout.write('Código 2 – Região Sul: 15% de desconto\n');
  stdout.write('Código 3 – Região Sudeste: 7% de desconto\n');
  stdout.write('Código 4 – Região Nordeste: 12% de desconto\n');
  stdout.write('Código 5 – Região Centro-Oeste: 20% de desconto\n');
  stdout.write('Qualquer outro codigo será considerado importado e nao recebera desconto\n');
  stdout.write('Insira o codigo da regiao do produto: \n');
  String? opcao = stdin.readLineSync();

  if(opcao == null || opcao.isEmpty){
    stdout.write('E obrigatorio que algum valor seja inserido!\n');
    return;
  }

  double? escolha = double.tryParse(opcao)?? 0;
  double? preco = double.tryParse(valor) ?? 0;
  double total;

  switch(escolha){
    case 1:
      total = preco * 1.05;

    case 2:
      total = preco * 1.15;

    case 3:
      total = preco * 1.07;

    case 4:
      total = preco * 1.12;

    case 5:
      total = preco * 1.2;

    default:
      total = preco;
  }

  stdout.write('O preco final do produto eh: $total\n');

}