import 'dart:io';

void main() {
  print("Digite um número:");
  int numero = int.parse(stdin.readLineSync()!);
  List<int> divisores = [];
  for (int i = 1; i <= numero; i++) {
    if (numero % i == 0) {
      divisores.add(i);
    }
  }
  print("Os divisores de $numero são: $divisores");
}