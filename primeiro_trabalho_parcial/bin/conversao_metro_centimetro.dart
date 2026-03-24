import 'dart:io';

void main() {
  double resultado;

  stdout.write('Selecione:\n');
  stdout.write('1 - Metros --> Centimetros\n');
  stdout.write('2 - Centimetros --> Metros\n');
  stdout.write('Qualquer outra inserção para sair: ');
  String? opcao1 = stdin.readLineSync();
  double? opcao2 = double.tryParse(opcao1!) ?? 0;

  if(opcao2 == 1){
    stdout.write('Insira o valor em metros para ser convertido: \n');
    double? metros = double.tryParse(stdin.readLineSync()!) ?? 0;

    resultado = metros * 100;
  }
  else if(opcao2 == 2){
    stdout.write('Insira o valor em centimentros para ser converitdo: \n');
    double? centimetro = double.tryParse(stdin.readLineSync()!) ?? 0;

    resultado = centimetro / 100;
  }
  else{
    stdout.write('Saindo...\n');
    return;
  }
  stdout.write('Convertido o valor é: $resultado \n');
}