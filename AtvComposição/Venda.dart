import 'Cliente.dart';
import 'VendaItem.dart';

class Venda{
  Cliente cliente;
  List<VendaItem> itens = [];

  Venda({required this.cliente, required this.itens});

  double valorTotal(){
    double total = 0.0;
    for(var item in itens){
      total += item.getPreco() * item.quantidade;
    }
    return total;
  }
  @override
  String toString(){
    String detalhes = 'Venda para: ${cliente.getNome()} (CPF: ${cliente.getCpf()})\n';
    detalhes += 'Itens:\n';
    for(var item in itens){
      detalhes += '- ${item.produto.getNome()} x${item.quantidade} @ R\$${item.getPreco().toStringAsFixed(2)} cada\n';
    }
    detalhes += 'Valor Total: R\$${valorTotal().toStringAsFixed(2)}\n';
    return detalhes;
  }
}