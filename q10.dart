import 'dart:io';

void main() {
  Map<String, String> mapa = {
    "G": "C",
    "C": "G",
    "T": "A",
    "A": "U"
  };

  print("Digite a fita de DNA:");
  String dna = stdin.readLineSync()!.toUpperCase();

  String rna = "";
  for (int i = 0; i < dna.length; i++) {
    rna += mapa[dna[i]] ?? "";
  }

  print("Fita de RNA: $rna");
}