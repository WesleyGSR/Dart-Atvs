import 'dart:io';

void main() {
  print("Digite o valor de N:");
  int n = int.parse(stdin.readLineSync()!);
  int soma = 0;
  int somaQuadrados = 0;

  for (int i = 1; i <= n; i++) {
    soma += i;
    somaQuadrados += i * i;
  }

  int quadradoDaSoma = soma * soma;
  int diferenca = quadradoDaSoma - somaQuadrados;

  print("Quadrado da soma: $quadradoDaSoma");
  print("Soma dos quadrados: $somaQuadrados");
  print("Diferença: $diferenca");
}