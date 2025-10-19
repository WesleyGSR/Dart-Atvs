class Animal{
  String nome;
  int idade;

  Animal(this.nome, this.idade);

  void fazerSom() {
    print("Som de animal");
  }
  void acao(){
    print("O animal está se movendo");
  }

}

class Cachorro extends Animal{
  String raca;

  Cachorro(super.nome, super.idade, this.raca);

  @override
  void fazerSom() {
    print("Au Au");
  }

  @override
  void acao(){
    print("O cachorro está correndo");
  }
}

class Cavalo extends Animal{
  String tipo;

  Cavalo(super.nome, super.idade, this.tipo);

  @override
  void fazerSom() {
    print("Relincho");
  }

  @override
  void acao(){
    print("O cavalo está galopando");
  }
}

class Preguica extends Animal{
  String cor;

  Preguica(super.nome, super.idade, this.cor);

  @override
  void fazerSom() {
    print("Som de preguiça");
  }

  @override
  void acao(){
    print("A preguiça está subindo na árvore");
  }
}

void main() {
  Cachorro cachorro = Cachorro("Rex", 5, "Labrador");
  Cavalo cavalo = Cavalo("Relâmpago", 7, "Árabe");
  Preguica preguica = Preguica("Lenta", 3, "Marrom");

  cachorro.fazerSom();
  cachorro.acao();

  cavalo.fazerSom();
  cavalo.acao();

  preguica.fazerSom();
  preguica.acao();
}