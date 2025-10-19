import 'q7.dart';
//criei o leao para aumentar o zoo
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