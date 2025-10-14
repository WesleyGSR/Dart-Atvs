void main(){
  print(raindrops(35));
  print(raindrops(30));
  print(raindrops(34));
}

String raindrops(int num) {
  String result = '';

  if (num % 3 == 0) {
    result += 'Pling';
  }
  if (num % 5 == 0) {
    result += 'Plang';
  }
  if (num % 7 == 0) {
    result += 'Plong';
  }
  if (num % 3 != 0 && num % 5 != 0 && num % 7 != 0) {
    result = num.toString();
  }
  if(num == 0){
    result = '0';
  }

  return result;
}
