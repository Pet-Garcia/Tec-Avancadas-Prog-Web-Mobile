import 'dart:io';

void main() {
  double resultado;

  stdout.write('Selecione:');
  stdout.write('1 - Celsius --> Fahrenheit');
  stdout.write('2 - Fahrenheit --> Celsius');
  stdout.write('Qualquer outra inserção para sair: ');
  String? opcao1 = stdin.readLineSync();
  double? opcao2 = double.tryParse(opcao1!) ?? 0;

  if(opcao2 == 1){
    stdout.write('Insira o valor em celsius para ser convertido: \n');
    double? celsius = double.tryParse(stdin.readLineSync()!) ?? 0;

    resultado = (celsius * 1.8) + 32;
  }
  else if(opcao2 == 2){
    stdout.write('Insira o valor em fahrenheit para ser converitdo: \n');
    double? fahrenheit= double.tryParse(stdin.readLineSync()!) ?? 0;

    resultado = (fahrenheit - 32) / 1.8;
  }
  else{
    stdout.write('Saindo...\n');
    return;
  }
  stdout.write('Convertido o valor é: $resultado \n');
}