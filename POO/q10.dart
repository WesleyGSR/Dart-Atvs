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

class Leao extends Animal{
  double tamanhoJuba;

  Leao(super.nome, super.idade, this.tamanhoJuba);

  @override
  void fazerSom() {
    print("Rugido");
  }

  @override
  void acao(){
    print("O leão está correndo");
  }
}

class Zoologico {
  List<Animal> animais = [];

  void adicionarAnimal(Animal animal) {
    if (animais.length < 10) {
      animais.add(animal);
    } else {
      print("Capacidade máxima do zoológico atingida.");
    }
  }

  void listarAnimais() {
    for (var animal in animais) {
      animal.fazerSom();
      animal.acao();
      print('---');
    }
  }
}

void main() {
  Zoologico zoologico = Zoologico();

  zoologico.adicionarAnimal(Cachorro('Rex', 5, 'Labrador'));
  zoologico.adicionarAnimal(Cavalo('Relâmpago', 7, 'Árabe'));
  zoologico.adicionarAnimal(Preguica('Flecha', 3, 'Marrom'));
  zoologico.adicionarAnimal(Leao('Simba', 4, 1.2));

  zoologico.listarAnimais();
}