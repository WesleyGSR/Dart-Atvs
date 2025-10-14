void main(){
  print("Média = ${media([7, 8, 6, 9, 5])}");
}

int soma(int a, int b){
  return a + b;
}

double media(List<int> notas){
  var somaNotas = 0;
  for(var nota in notas){
    somaNotas = soma(somaNotas, nota);
  }
  return somaNotas / notas.length;
  
}