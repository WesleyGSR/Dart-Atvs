void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  for (int numero in a) {
    if (numero < 5) {
      print(numero);
    }
  }
}