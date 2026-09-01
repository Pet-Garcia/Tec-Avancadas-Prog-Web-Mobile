/*
4. Desenvolva um programa que solicite o nome de um estado brasileiro e informe
sua respectiva região:
● Norte: Acre, Amapá, Amazonas, Pará, Rondônia, Roraima, Tocantins
● Nordeste: Alagoas, Bahia, Ceará, Maranhão, Paraíba, Pernambuco, Piauí, Rio
Grande do Norte, Sergipe
● Centro-Oeste: Goiás, Mato Grosso, Mato Grosso do Sul, Distrito Federal
● Sudeste: Espírito Santo, Minas Gerais, Rio de Janeiro, São Paulo
● Sul: Paraná, Rio Grande do Sul, Santa Catarina
Se o estado informado não constar na lista, exiba: "Estado não reconhecido."
*/

import 'dart:io';

void main() {
  var norte = ['Acre', 'Amapá', 'Amazonas', 'Pará', 'Rondônia', 'Roraima', 'Tocantins'];
  var nordeste = ['Alagoas', 'Bahia', 'Ceará', 'Maranhão', 'Paraíba', 'Pernambuco', 'Piauí', 'Rio Grande do Norte', 'Sergipe'];
  var centrooeste = ['Goiás', 'Mato Grosso', 'Mato Grosso do Sul', 'Distrito Federal'];
  var sudeste = ['Espírito Santo', 'Minas Gerais', 'Rio de Janeiro', 'São Paulo'];
  var sul = ['Paraná', 'Rio Grande do Sul', 'Santa Catarina'];

  stdout.write('Insira o nome do Estado: \n');
  String? nome = stdin.readLineSync();

  if(nome == null || nome.isEmpty){
    stdout.write('O campo nome é obrigatorio!\n');
    return;
  }

  String estado = nome.trim();

  if(norte.any((e) => e.toLowerCase() == estado.toLowerCase())){
    stdout.write('O estado $nome pertence ao Norte\n');

  } else if(nordeste.any((e) => e.toLowerCase() == estado.toLowerCase())){
    stdout.write('O estado $nome pertence ao Nordeste\n');

  } else if(centrooeste.any((e) => e.toLowerCase() == estado.toLowerCase())) {
    stdout.write('O estado $nome pertence ao Centro-Oeste\n');

  } else if(sudeste.any((e) => e.toLowerCase() == estado.toLowerCase())){
    stdout.write('O estado $nome pertence ao Sudeste\n');

  } else if(sul.any((e) => e.toLowerCase() == estado.toLowerCase())){
    stdout.write('O estado $nome pertence ao Sul\n');

  } else{
    stdout.write('Estado não reconhecido\n');
    
  }

  return;
}