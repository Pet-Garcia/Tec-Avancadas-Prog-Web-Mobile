import 'dart:io';

void main() {
  stdout.write('Qual a distância? ');
  String? valor = stdin.readLineSync();

  // Permite que o dart saiba que a string valor vai ter algo dentro dela ou vai ser encerrado. Tratando o erro que causaria se fosse nulo
  // Existe bibliotecas que fazem isso de forma mais simples
  if(valor == null ||){
    stdout.write('O campo distância é obrigatorio!\n');
    return;
  }

  // parse encerra se houver problema, tryParse tenta resolver com o valor padrao
  double? distancia = double.tryParse(valor) ?? 0;
  double? premio;

  if(distancia < 800) {
    premio = 5000;
  } else if(distancia >= 800 && distancia < 1500) {
    premio = 10000;
  } else {
    premio = 15000;
  }

  stdout.write('O seu premio é: $premio\n');
}