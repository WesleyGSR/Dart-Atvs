void main(){
  int Function(int, int) operacao = multiplicar;
  print("Resultado da multiplicação: ${operacao(5, 4)}");
}

int multiplicar(int a, int b){
  return a * b;
}