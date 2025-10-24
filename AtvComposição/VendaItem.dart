import 'Produto.dart';

class VendaItem {
  Produto produto;
  int quantidade;
  double privada_preco;
  
  VendaItem({required this.produto, required this.quantidade}) : privada_preco = produto.getPrecoComDesconto();

  double getPreco(){
    if(privada_preco > 0){
      return privada_preco;
    }
    return 0;
  }

  void setPreco(double preco) {
    if (preco > 0) {
      privada_preco = preco;
    }
  }
}