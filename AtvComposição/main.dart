import 'Cliente.dart';
import 'Produto.dart';
import 'Venda.dart';
import 'VendaItem.dart';

void main(){
  Cliente cliente1 = Cliente(nome: 'Victoria', cpf: 123456789);
  Cliente cliente2 = Cliente(nome: 'Wesley', cpf: 987654321);

  Produto produto1 = Produto(codigo: 1, nome: 'Caneta', preco: 2.50);
  Produto produto2 = Produto(codigo: 2, nome: 'Caderno', preco: 15.00);
  Produto produto3 = Produto(codigo: 3, nome: 'Mochila', preco: 120.00);

  produto2.setDesconto(3.00);
  produto3.setDesconto(20.00);

  VendaItem item1 = VendaItem(produto: produto1, quantidade: 10);
  VendaItem item2 = VendaItem(produto: produto2, quantidade: 2);
  VendaItem item3 = VendaItem(produto: produto3, quantidade: 1);


  Venda venda1 = Venda(cliente: cliente1, itens: [item1, item2]);
  Venda venda2 = Venda(cliente: cliente2, itens: [item3]);

  print(venda1.toString());
  print(venda2.toString());
}