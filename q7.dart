void main() {
  print(calcularIdade(1000000000, "Terra"));
  print(calcularIdade(1010000, "Mercúrio"));
  print(calcularIdade(1000000000, "Vênus"));
  print(calcularIdade(15002000, "Marte"));
  print(calcularIdade(1000000000, "Júpiter"));
  print(calcularIdade(18500000, "Saturno"));
  print(calcularIdade(198325000, "Urano"));
  print(calcularIdade(1000000000, "Netuno"));
}

double calcularIdade(int idadeEmSegundos, String planeta) {
  const segundosPorAnoTerrestre = 31557600;
  const periodosOrbitais = {
    "Mercúrio": 0.2408467,
    "Vênus": 0.61519726,
    "Terra": 1.0,
    "Marte": 1.8808158,
    "Júpiter": 11.862615,
    "Saturno": 29.447498,
    "Urano": 84.016846,
    "Netuno": 164.79132
  };

  if (!periodosOrbitais.containsKey(planeta)) {
    print("Planeta inválido: $planeta");
    return -1;
  }

  double idadeEmAnosTerrestres = idadeEmSegundos / segundosPorAnoTerrestre;
  double idadeNoPlaneta = idadeEmAnosTerrestres / periodosOrbitais[planeta]!;
  return double.parse(idadeNoPlaneta.toStringAsFixed(2));
}
