import 'q7.dart';

class Veterinario {
  String nome;
  String telefone;

  Veterinario(this.nome, this.telefone);

  void examinar(Animal animal) {
    print("Veterinário $nome está examinando o animal ${animal.nome}");
    animal.fazerSom();
  }
}

void main() {
  Cachorro cachorro = Cachorro("Rex", 5, "Labrador");
  Cavalo cavalo = Cavalo("Relâmpago", 7, "Árabe");
  Preguica preguica = Preguica("Flecha", 3, "Marrom");

  Veterinario vet = Veterinario("Dr. João", "555-1234");

  vet.examinar(cachorro);
  vet.examinar(cavalo);
  vet.examinar(preguica);
}