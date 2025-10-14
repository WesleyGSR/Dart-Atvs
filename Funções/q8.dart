void main() {
  print(calcularPontosEnergia(20, [3, 5]));
  print(calcularPontosEnergia(10, [2]));
  print(calcularPontosEnergia(15, [4, 6]));
  print(calcularPontosEnergia(30, [3, 5, 7]));
}

int calcularPontosEnergia(int nivel, List<int> valoresBase) {
  Set<int> multiplosUnicos = {};

  for (int valor in valoresBase) {
    for (int i = valor; i < nivel; i += valor) {
      multiplosUnicos.add(i);
    }
  }

  int soma = 0;
  for (var n in multiplosUnicos) {
    soma += n;
  }

  return soma;
}
