import 'dart:io';
void main(){
  print("Máximo e Mínimo = ${maximo_minimo([2.5, 3.6, 1.2, 4.8, 0.9])}");
}

List<double> maximo_minimo(List<double> numeros){
  if(numeros.isEmpty){
    print("A lista não pode estar vazia");
    exit(1);
  }
  List<double> max_min = [];
  double maximo = numeros[0];
  double minimo = numeros[0];
  
  for(var numero in numeros){
    if(numero > maximo){
      maximo = numero;
    }
    if(numero < minimo){
      minimo = numero;
    }
  }
  max_min.add(maximo);
  max_min.add(minimo);
  return max_min;
}