void main(){
  print("Desconto = ${desconto(1050)}");
  print("Desconto = ${desconto(1200, 20)}");
}

double desconto(double preco, [double? percentual]){
  if (percentual == null) {
    percentual = 10;
    print("Percentual não informado. Usando 10% como padrão.");
  }
  return preco - (preco * percentual! / 100);
}