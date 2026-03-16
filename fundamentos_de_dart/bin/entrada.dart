import 'dart:io';

void main () {
  stdout.write("Qual o seu nome? ");
  // String? é opcional, String é obrigatorio.
  // stdin.readLineSync é obrigatoriamente String?[Opcional]
  String? n = stdin.readLineSync();

  // $ é marcador de posição. Indica que apos o $ é a variavel = $n a variavel n, n o texto n
  stdout.write("Boa tarde $n!");

}