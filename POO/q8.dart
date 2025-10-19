import 'q7.dart';

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