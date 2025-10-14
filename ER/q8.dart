import 'dart:io';

void main() {
  print("Fale algo com Bob:");
  String frase = stdin.readLineSync()!;

  if (frase.trim().isEmpty) {
    print("Tudo bem. Seja desse jeito!");
  } else if (frase == frase.toUpperCase() && frase.endsWith("?")) {
    print("Calma, eu sei o que estou fazendo!");
  } else if (frase == frase.toUpperCase()) {
    print("Uau, relaxe!");
  } else if (frase.endsWith("?")) {
    print("Ok.");
  } else {
    print("Tanto faz.");
  }
}