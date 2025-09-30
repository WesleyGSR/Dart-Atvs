import 'dart:io';

void main() {
  print("Digite seu nome:");
  String nome = stdin.readLineSync()!;
  print("Digite sua idade:");
  int idade = int.parse(stdin.readLineSync()!);

  print("Olá $nome, você tem $idade anos.");
  int anoAtual = DateTime.now().year;
  int anoNascimento = anoAtual - idade;
  print("Você nasceu em $anoNascimento.");

  for (int ano = anoNascimento; ano <= anoAtual; ano++) {
    int idadeNoAno = ano - anoNascimento;
    if (idadeNoAno == 0) {
      print("No ano de $ano você nasceu!");
    } else {
      print("No ano de $ano você tinha $idadeNoAno ano(s).");
    }
  }

  int falta = 100 - idade;
  print("Faltam $falta anos para você completar 100 anos.");
}